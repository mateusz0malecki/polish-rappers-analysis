from .celery import app
from celery import Task
from db.database import db_session
from db.db_data_update import get_musicians_data


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
