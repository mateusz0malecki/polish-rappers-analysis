from models.musician_model import Musician
from scraping.scraping_musicians import get_rappers, WIKI_URL, WIKI_URL2, parse_rapper
from scraping.scraping_songs import get_songs_for_musician
from nlp.count import count_words


def get_musicians_data(db):
    rappers = get_rappers(WIKI_URL, WIKI_URL2)
    for rapper in rappers:
        parsed_rapper = parse_rapper(rapper)
        if not Musician.get_musician_by_name(db, parsed_rapper).first():
            rapper_to_add = Musician(
                name=parsed_rapper,
                full_name=rapper
            )
            db.add(rapper_to_add)
            db.commit()
            db.refresh(rapper_to_add)
    print("[x] Uploading musicians complete.")


def get_musicians_songs_data(musician, db):
    print(f"[x] Preparing data about {musician} songs...")
    parsed_rapper = parse_rapper(musician)
    rapper_db = Musician.get_musician_by_name(db, parsed_rapper)
    if not rapper_db.first():
        print(f"[x] Musician {rapper_db} not found.")
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
        print(f"[x] Calculating data about {musician} songs complete.")
