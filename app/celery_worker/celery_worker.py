import os
from celery import Celery


BROKER_URL = os.environ.get("CELERY_BROKER_URL")
BACKEND_URL = os.environ.get("CELERY_RESULT_BACKEND")

celery = Celery('tasks', backend=BACKEND_URL, broker=BROKER_URL)
