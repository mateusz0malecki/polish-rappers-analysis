from sqlalchemy import Column, String, DateTime, Integer, SmallInteger
from sqlalchemy.sql import func

from db.database import Base


class Musician(Base):
    __tablename__ = "musicians"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(32), unique=True)
    artistName = Column(String(32), unique=True)
    numberOfWords10000 = Column(Integer, nullable=True, default=None)
    numberOfWords20000 = Column(Integer, nullable=True, default=None)
    numberOfWords30000 = Column(Integer, nullable=True, default=None)
    numberOfWordsAll = Column(Integer, nullable=True, default=None)
    ranking10000 = Column(Integer, nullable=True, default=None)
    ranking20000 = Column(Integer, nullable=True, default=None)
    ranking30000 = Column(Integer, nullable=True, default=None)
    rankingAll = Column(Integer, nullable=True, default=None)
    mostCommon10000 = Column(String(256), nullable=True, default=None)
    mostCommon20000 = Column(String(256), nullable=True, default=None)
    mostCommon30000 = Column(String(256), nullable=True, default=None)
    mostCommonAll = Column(String(256), nullable=True, default=None)
    updatedAt = Column(DateTime(timezone=True), onupdate=func.now())
    createdAt = Column(DateTime(timezone=True), server_default=func.now())

    @staticmethod
    def get_musician_by_name(db, name):
        return db.query(Musician).filter(Musician.name == name)
