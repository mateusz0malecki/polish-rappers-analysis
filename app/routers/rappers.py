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
    rappers = db.query(Musician).all()
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


@router.get('/ranking/10000', status_code=status.HTTP_200_OK, response_model=List[musician_schemas.MusicianRank10000])
async def ranking_results_10000(
        db: Session = Depends(get_db)
):
    """
    Returns list of rappers ordered ascending by those who used most different words in his first 10000 songs words.
    """
    rappers = db.query(Musician).order_by(Musician.ranking10000)
    return rappers.all()


@router.get('/ranking/20000', status_code=status.HTTP_200_OK, response_model=List[musician_schemas.MusicianRank20000])
async def ranking_results_20000(
        db: Session = Depends(get_db)
):
    """
    Returns list of rappers ordered ascending by those who used most different words in his first 20000 songs words.
    """
    rappers = db.query(Musician).order_by(Musician.ranking20000)
    return rappers.all()


@router.get('/ranking/30000', status_code=status.HTTP_200_OK, response_model=List[musician_schemas.MusicianRank30000])
async def ranking_results_30000(
        db: Session = Depends(get_db)
):
    """
    Returns list of rappers ordered ascending by those who used most different words in his first 30000 songs words.
    """
    rappers = db.query(Musician).order_by(Musician.ranking30000)
    return rappers.all()


@router.get('/ranking/all', status_code=status.HTTP_200_OK, response_model=List[musician_schemas.MusicianRankAll])
async def ranking_results_all(
        db: Session = Depends(get_db)
):
    """
    Returns list of rappers ordered ascending by those who used most different words in his all songs.
    """
    rappers = db.query(Musician).order_by(Musician.rankingAll)
    return rappers.all()
