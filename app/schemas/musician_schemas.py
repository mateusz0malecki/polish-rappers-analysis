from pydantic import BaseModel
from typing import Optional
from datetime import datetime


class MusicianList(BaseModel):
    full_name: str

    class Config:
        orm_mode = True


class MusicianScheme(BaseModel):
    full_name: str
    number_of_words_10000: Optional[int]
    number_of_words_20000: Optional[int]
    number_of_words_30000: Optional[int]
    number_of_words_all: Optional[int]
    most_common_10000: Optional[str]
    most_common_20000: Optional[str]
    most_common_30000: Optional[str]
    most_common_all: Optional[str]
    updated_at: Optional[datetime]
    created_at: Optional[datetime]

    class Config:
        orm_mode = True
