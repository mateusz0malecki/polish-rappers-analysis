import os
import stanza


def get_all_texts(musician):
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
    return texts_gathered.lower()


def nlp_texts(text):
    """
    Transforms all wards to one standard variety (lemma).
    """
    nlp = stanza.Pipeline(lang='pl', processors='tokenize, mwt, lemma', logging_level="WARNING")
    nlp_text = nlp(text)

    nlp_text_lemma = ''
    var = (nlp_text_lemma.join(word.lemma) for sent in nlp_text.sentences for word in sent.words)

    list_of_words = []
    for word in var:
        if word.isalpha() and len(word) > 3:
            list_of_words.append(word)
    return list_of_words
