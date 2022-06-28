from collections import Counter
from nlp.lemma import get_all_texts, nlp_texts


def count_words(musician, limit=None):
    """
    Returns different words used by an artist and the most common ones.
    """
    texts = get_all_texts(musician)
    list_of_words = nlp_texts(texts)
    if limit is None:
        words_to_count = list_of_words
    else:
        words_to_count = list_of_words[:limit]

    counter = Counter(words_to_count)
    most_common_words = counter.most_common(5)
    nr_of_words = len(counter)
    return nr_of_words, most_common_words
