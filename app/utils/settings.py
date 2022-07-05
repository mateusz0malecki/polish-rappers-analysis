from functools import lru_cache
from pydantic import BaseSettings


class Settings(BaseSettings):
    class Config:
        env_file = ".env"

    postgres_user: str
    postgres_db: str
    postgres_password: str
    postgres_host: str

    sangs_path: str = "/app/files_songs/"


@lru_cache()
def get_settings():
    return Settings()
