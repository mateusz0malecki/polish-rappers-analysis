from fastapi import FastAPI, Depends, HTTPException, status
from sqlalchemy.orm import Session
from typing import List

from scraping.scraping_musicians import parse_rapper
from models.musician_model import Musician
from schemas import musician_schemas
from db.database import get_db
from db.db_data_update import get_musicians_data, get_musicians_songs_data


app = FastAPI()


@app.get('/setup')
async def setup(
        db: Session = Depends(get_db)
):
    """
    Only for superuser.
    Updates DB with current info about rappers and songs.
    """
    get_musicians_data(db)
    rappers = db.query(Musician).all()
    rappers_list = [rapper.full_name for rapper in rappers]
    for rapper_name in rappers_list:
        get_musicians_songs_data(rapper_name, db)
    return {"message": "Database updated."}


@app.get('/', response_model=List[musician_schemas.MusicianList], status_code=status.HTTP_200_OK)
async def get_musicians(
        db: Session = Depends(get_db)
):
    """
    Returns list of available rappers.
    """
    rappers = db.query(Musician).all()
    return rappers


@app.get('/{musician}', response_model=musician_schemas.MusicianScheme, status_code=status.HTTP_200_OK)
async def musician_info(
        musician: str,
        db: Session = Depends(get_db)
):
    """
    Displays available info about words in chosen rapper songs.
    """
    parsed_rapper = parse_rapper(musician)
    rapper_db = Musician.get_musician_by_name(db, parsed_rapper)
    if not rapper_db.first():
        return HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Rapper not found. Try again."
        )
    else:
        return rapper_db.first()
