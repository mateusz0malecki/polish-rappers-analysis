from collections import Counter
import os


def get_list_of_words(musician):
    """
    Gathers text from all downloaded songs of chosen musician.
    Turns it into list of words.
    """
    path = f"/app/files_songs/{musician}"
    texts_gathered = ''
    for file in os.listdir(f"/app/files_songs/{musician}/"):
        with open(os.path.join(path, file), 'r') as song_text:
            text = song_text.read()
            texts_gathered += text

    list_of_words = texts_gathered.split()
    list_of_words_cleaned = []
    for word in list_of_words:
        if word.isalpha() and len(word) > 3:
            list_of_words_cleaned.append(word)

    return list_of_words_cleaned


def count_words(musician, limit=None):
    """
    Returns different words used by an artist and the most common ones.
    """
    list_of_words = get_list_of_words(musician)
    if limit is None:
        words_to_count = list_of_words
    else:
        words_to_count = list_of_words[:limit]

    counter = Counter(words_to_count)
    most_common_words = counter.most_common(10)
    nr_of_words = len(counter)
    return nr_of_words, most_common_words
