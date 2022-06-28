from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from db.database import get_db
from db.db_data_update import get_musicians_data, get_musicians_songs_data, make_folder_for_data
from models.musician_model import Musician

router = APIRouter(tags=['SETUP'])


@router.get('/setup_musicians')
async def setup_musicians(
        db: Session = Depends(get_db)
):
    """
    Only for superuser.
    Updates DB with current info about rappers.
    """
    get_musicians_data(db)
    return {"message": "DB - musicians list updated."}


@router.get('/setup_songs')
async def setup_songs(
        db: Session = Depends(get_db)
):
    """
    Only for superuser.
    Updates DB with current info about songs.
    """
    make_folder_for_data()
    rappers = db.query(Musician).all()
    rappers_list = [rapper.artistName for rapper in rappers]
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
    rappers10000 = db.query(Musician).order_by(Musician.numberOfWords10000.desc())
    rappers20000 = db.query(Musician).order_by(Musician.numberOfWords20000.desc())
    rappers30000 = db.query(Musician).order_by(Musician.numberOfWords30000.desc())
    rappers_all = db.query(Musician).order_by(Musician.numberOfWordsAll.desc())
    number = 1
    for rapper in rappers10000:
        print(rapper.name)
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking10000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers20000:
        print(rapper.name)
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking20000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers30000:
        print(rapper.name)
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking30000": number
            }
        )
        db.commit()
        number += 1
    number = 1
    for rapper in rappers_all:
        print(rapper.name)
        db.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "rankingAll": number
            }
        )
        db.commit()
        number += 1
    return {"message": "DB - rankings info updated."}
