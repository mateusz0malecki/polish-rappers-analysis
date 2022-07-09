from fastapi import APIRouter, Depends, HTTPException, status
from sqlalchemy.orm import Session
from typing import List

from scraping.scraping_musicians import parse_rapper
from models.musician_model import Musician
from schemas import musician_schemas
from db.database import get_db


router = APIRouter(tags=['Rappers'])


@router.get('/', response_model=List[musician_schemas.MusicianList], status_code=status.HTTP_200_OK)
async def get_musicians(
        db: Session = Depends(get_db)
):
    """
    Returns list of available rappers.
    """
    rappers = Musician.get_all_musicians(db)
    return rappers


@router.get('/{musician}', response_model=musician_schemas.MusicianScheme, status_code=status.HTTP_200_OK)
async def musician_info(
        musician: str,
        db: Session = Depends(get_db)
):
    """
    Displays available info about words in chosen rapper songs.
    """
    parsed_rapper = parse_rapper(musician)
    rapper_db = Musician.get_musician_by_name(db, parsed_rapper)
    if rapper_db is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Rapper not found. Try again."
        )
    else:
        return rapper_db


@router.get('/ranking/', status_code=status.HTTP_200_OK)
async def ranking_results(
        range_of_words,
        db: Session = Depends(get_db)
):
    """
    Returns list of rappers ordered ascending by those who used most different words in his songs words.
    """
    if str(range_of_words).lower() not in ['10000', '20000', '30000', 'all']:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Wrong range of words. Choose from: 10000, 20000, 30000, all."
        )
    elif str(range_of_words) == '10000':
        rappers = db.query(Musician).order_by(Musician.ranking_10000).all()
        return [musician_schemas.MusicianRank10000(**rapper.__dict__) for rapper in rappers]
    elif str(range_of_words) == '20000':
        rappers = db.query(Musician).order_by(Musician.ranking_20000).all()
        return [musician_schemas.MusicianRank20000(**rapper.__dict__) for rapper in rappers]
    elif str(range_of_words) == '30000':
        rappers = db.query(Musician).order_by(Musician.ranking_30000).all()
        return [musician_schemas.MusicianRank30000(**rapper.__dict__) for rapper in rappers]
    else:
        rappers = db.query(Musician).order_by(Musician.ranking_all).all()
        return [musician_schemas.MusicianRankAll(**rapper.__dict__) for rapper in rappers]
