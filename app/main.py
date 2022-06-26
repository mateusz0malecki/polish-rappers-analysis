from fastapi import FastAPI, Depends, HTTPException, status

from sqlalchemy.orm import Session

from scraping.scraping_musicians import get_rappers, WIKI_URL, WIKI_URL2, parse_rapper
from scraping.scraping_songs import get_songs_for_musician
from models.musician_model import Musician
from db.database import get_db
from nlp.count import count_words
from schemas import musician_schemas

app = FastAPI()


@app.get('/setup')
def setup(
        db: Session = Depends(get_db)
):
    """
    Func to fill database with available musicians for further workflow.
    Returns list of available rappers.
    """
    rappers = get_rappers(WIKI_URL, WIKI_URL2)
    for rapper in rappers:
        parsed_rapper = parse_rapper(rapper)
        if not Musician.get_musician_by_name(db, parsed_rapper).first():
            rapper_to_add = Musician(
                name=parsed_rapper
            )
            db.add(rapper_to_add)
            db.commit()
            db.refresh(rapper_to_add)
    return rappers


@app.get('/{musician}', response_model=musician_schemas.MusicianScheme)
def musician_info(
        musician: str,
        db: Session = Depends(get_db)
):
    """
    Displays available info about words in chosen rapper songs.
    """
    parsed_rapper = parse_rapper(musician)
    rapper_db = Musician.get_musician_by_name(db, parsed_rapper)
    if not rapper_db.first():
        return HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Rapper not found. Try again."
        )
    else:
        return rapper_db.first()


@app.get('/download_info/{musician}')
def download_info(
        musician: str,
        db: Session = Depends(get_db)
):
    """
    Scraps data about chosen rapper's songs.
    Then analysis begin to describe most common words and number of different words.
    Results are saved in db.
    """
    parsed_rapper = parse_rapper(musician)
    rapper_db = Musician.get_musician_by_name(db, parsed_rapper)
    if not rapper_db.first():
        return HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Rapper not found. Try again."
        )
    else:
        get_songs_for_musician(parsed_rapper)
        words_all, common_all = count_words(parsed_rapper)
        words_10000, common_10000 = count_words(parsed_rapper, 10000)
        words_20000, common_20000 = count_words(parsed_rapper, 20000)
        words_30000, common_30000 = count_words(parsed_rapper, 30000)

        common_all_db = ''
        common_10000_db = ''
        common_20000_db = ''
        common_30000_db = ''
        for word in common_all:
            common_all_db += word[0] + ' x' + str(word[1]) + ' / '
        for word in common_10000:
            common_10000_db += word[0] + ' x' + str(word[1]) + ' / '
        for word in common_20000:
            common_20000_db += word[0] + ' x' + str(word[1]) + ' / '
        for word in common_30000:
            common_30000_db += word[0] + ' x' + str(word[1]) + ' / '

        rapper_db.update(
            {"number_of_words_10000": words_10000,
             "number_of_words_20000": words_20000,
             "number_of_words_30000": words_30000,
             "number_of_words_all": words_all,
             "most_common_10000": common_10000_db,
             "most_common_20000": common_20000_db,
             "most_common_30000": common_30000_db,
             "most_common_all": common_all_db}
        )
        db.commit()
        return {"msg": "Downloading info complete."}
