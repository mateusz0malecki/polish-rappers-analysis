from pydantic import BaseModel
from typing import Optional
from datetime import datetime


class MusicianList(BaseModel):
    artistName: str

    class Config:
        orm_mode = True


class MusicianScheme(BaseModel):
    artistName: str
    numberOfWords10000: Optional[int]
    numberOfWords20000: Optional[int]
    numberOfWords30000: Optional[int]
    numberOfWordsAll: Optional[int]
    ranking10000: Optional[int]
    ranking20000: Optional[int]
    ranking30000: Optional[int]
    rankingAll: Optional[int]
    mostCommon10000: Optional[str]
    mostCommon20000: Optional[str]
    mostCommon30000: Optional[str]
    mostCommonAll: Optional[str]
    updatedAt: Optional[datetime]
    createdAt: Optional[datetime]

    class Config:
        orm_mode = True


class MusicianRank10000(MusicianList):
    ranking10000: Optional[int]
    numberOfWords10000: Optional[int]
    mostCommon10000: Optional[str]


class MusicianRank20000(MusicianList):
    ranking20000: Optional[int]
    numberOfWords20000: Optional[int]
    mostCommon20000: Optional[str]


class MusicianRank30000(MusicianList):
    ranking30000: Optional[int]
    numberOfWords30000: Optional[int]
    mostCommon30000: Optional[str]


class MusicianRankAll(MusicianList):
    rankingAll: Optional[int]
    numberOfWordsAll: Optional[int]
    mostCommonAll: Optional[str]
