from .celery import app
from celery import Task
from db.database import db_session
from db.db_data_update import get_musicians_data, get_musicians_songs_data
from models.musician_model import Musician
from scraping.scraping_songs import make_folder_for_data


class SQLAlchemyTask(Task):
    """An abstract Celery Task that ensures that the connection the the
    database is closed on task completion"""
    abstract = True

    def after_return(self, status, retval, task_id, args, kwargs, einfo):
        db_session.remove()


@app.task(name="setup_musicians", base=SQLAlchemyTask)
def setup_musicians():
    """
    Only for superuser.
    Updates DB with current info about rappers.
    """
    get_musicians_data(db_session)
    return {"message": "DB - musicians list updated."}


@app.task(name="setup_songs", base=SQLAlchemyTask)
def setup_songs():
    """
    Only for superuser.
    Updates DB with current info about songs.
    """
    make_folder_for_data()
    rappers = Musician.get_all_musicians(db_session)
    rappers_list = [rapper.artist_name for rapper in rappers]
    for rapper_name in rappers_list:
        get_musicians_songs_data(rapper_name, db_session)
    return {"message": "DB - songs info updated."}


@app.task(name="setup_ranking", base=SQLAlchemyTask)
def setup_ranking():
    """
    Only for superuser.
    Updates DB with current info about ranking - which rapper used most words.
    """
    rappers10000 = db_session.query(Musician).order_by(Musician.number_of_words_10000.desc())
    rappers20000 = db_session.query(Musician).order_by(Musician.number_of_words_20000.desc())
    rappers30000 = db_session.query(Musician).order_by(Musician.number_of_words_30000.desc())
    rappers_all = db_session.query(Musician).order_by(Musician.number_of_words_all.desc())
    number = 1
    for rapper in rappers10000:
        db_session.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_10000": number
            }
        )
        db_session.commit()
        number += 1
    number = 1
    for rapper in rappers20000:
        db_session.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_20000": number
            }
        )
        db_session.commit()
        number += 1
    number = 1
    for rapper in rappers30000:
        db_session.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_30000": number
            }
        )
        db_session.commit()
        number += 1
    number = 1
    for rapper in rappers_all:
        db_session.query(Musician).filter(Musician.id == rapper.id).update(
            {
                "ranking_all": number
            }
        )
        db_session.commit()
        number += 1
    return {"message": "DB - rankings info updated."}
