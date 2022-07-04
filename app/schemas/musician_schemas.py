from pydantic import BaseModel
from typing import Optional
from datetime import datetime


def lower_camel(string: str) -> str:
    camel = ''.join(word.capitalize() for word in string.split('_'))
    low_camel = camel[0].lower() + camel[1:]
    return low_camel


class MusicianList(BaseModel):
    artist_name: str

    class Config:
        orm_mode = True
        alias_generator = lower_camel
        allow_population_by_field_name = True


class MusicianScheme(BaseModel):
    artist_name: str
    number_of_words_10000: Optional[int]
    number_of_words_20000: Optional[int]
    number_of_words_30000: Optional[int]
    number_of_words_all: Optional[int]
    ranking_10000: Optional[int]
    ranking_20000: Optional[int]
    ranking_30000: Optional[int]
    ranking_all: Optional[int]
    most_common_10000: Optional[str]
    most_common_20000: Optional[str]
    most_common_30000: Optional[str]
    most_common_all: Optional[str]
    updated_at: Optional[datetime]
    created_at: Optional[datetime]

    class Config:
        orm_mode = True
        alias_generator = lower_camel
        allow_population_by_field_name = True


class MusicianRank10000(MusicianList):
    ranking_10000: Optional[int]
    number_of_words_10000: Optional[int]
    most_common_10000: Optional[str]


class MusicianRank20000(MusicianList):
    ranking_20000: Optional[int]
    number_of_words_20000: Optional[int]
    most_common_20000: Optional[str]


class MusicianRank30000(MusicianList):
    ranking_30000: Optional[int]
    number_of_words_30000: Optional[int]
    most_common_30000: Optional[str]


class MusicianRankAll(MusicianList):
    ranking_all: Optional[int]
    number_of_words_all: Optional[int]
    most_common_all: Optional[str]
