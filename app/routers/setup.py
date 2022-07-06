from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from db.database import get_db
from db.db_data_update import get_musicians_songs_data
from models.musician_model import Musician
from scraping.scraping_songs import make_folder_for_data

router = APIRouter(tags=['SETUP'])


@router.get('/setup_songs')
async def setup_songs(
        db: Session = Depends(get_db)
):
    """
    Only for superuser.
    Updates DB with current info about songs.
    """
    make_folder_for_data()
    rappers = Musician.get_all_musicians(db)
    rappers_list = [rapper.artist_name for rapper in rappers]
    for rapper_name in rappers_list:
        get_musicians_songs_data(rapper_name, db)
    return {"message": "DB - songs info updated."}


@router.get('/setup_ranking')
async def setup_ranking(
        db: Session = Depends(get_db)
):
    """
    Only for superuser.
    Updates DB with current info about ranking - which rapper used most words.
    """
    rappers10000 = db.query(Musician).order_by(Musician.number_of_words_10000.desc())
    rappers20000 = db.query(Musician).order_by(Musician.number_of_words_20000.desc())
    rappers30000 = db.query(Musician).order_by(Musician.number_of_words_30000.desc())
    rappers_all = db.query(Musician).order_by(Musician.number_of_words_all.desc())
    number = 1
    for rapper in rappers10000:
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_10000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers20000:
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_20000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers30000:
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_30000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers_all:
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_all": number
            }
        )
        db.commit()
        number += 1
    return {"message": "DB - rankings info updated."}
