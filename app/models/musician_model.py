from sqlalchemy import Column, String, DateTime, Integer
from sqlalchemy.sql import func

from db.database import Base


class Musician(Base):
    __tablename__ = "musicians"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(32), unique=True)
    number_of_words_10000 = Column(Integer, nullable=True, default=None)
    number_of_words_20000 = Column(Integer, nullable=True, default=None)
    number_of_words_30000 = Column(Integer, nullable=True, default=None)
    number_of_words_all = Column(Integer, nullable=True, default=None)
    most_common_10000 = Column(String(256), nullable=True, default=None)
    most_common_20000 = Column(String(256), nullable=True, default=None)
    most_common_30000 = Column(String(256), nullable=True, default=None)
    most_common_all = Column(String(256), nullable=True, default=None)
    updated_at = Column(DateTime(timezone=True), onupdate=func.now())
    created_at = Column(DateTime(timezone=True), server_default=func.now())

    @staticmethod
    def get_musician_by_name(db, name):
        return db.query(Musician).filter(Musician.name == name)
