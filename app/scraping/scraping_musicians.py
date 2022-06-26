from bs4 import BeautifulSoup
from requests import get

WIKI_URL = "https://pl.wikipedia.org/w/index.php?title=Kategoria:Polscy_raperzy"
WIKI_URL2 = "https://pl.wikipedia.org/w/index.php?title=Kategoria:Polscy_raperzy&pagefrom=Rahim#mw-pages"


def get_rappers(*URLS):
    """
    Scraps list of polish rappers from Wikipedia.
    """
    rappers = []
    for URL in URLS:
        page = get(URL).content
        bs = BeautifulSoup(page, 'html.parser')
        for rapper_group in bs.find_all('div', class_="mw-category-group"):
            for rapper in rapper_group.find_all('li'):
                rapper_clean = rapper.get_text() \
                    .replace('(raper)', '') \
                    .replace('(muzyk)', '') \
                    .replace('(beatbokser)', '') \
                    .replace('(producent muzyczny)', '') \
                    .replace('(freestyler)', '') \
                    .replace('(piosenkarz)', '') \
                    .strip()
                rappers.append(rapper_clean)
    return rappers


def parse_rapper(rapper):
    """
    Prepares rapper name to be used in 'tekstowo.pl' to scrap songs text.
    """
    response = rapper.lower() \
        .replace('.', '_') \
        .replace(',', '_') \
        .replace('?', '_') \
        .replace('!', '_') \
        .replace('#', '_') \
        .replace('&', '_') \
        .replace('-', '_') \
        .replace(' ', '_') \
        .replace('ą', 'a') \
        .replace('ć', 'c') \
        .replace('ć', 'c') \
        .replace('ę', 'e') \
        .replace('ł', 'l') \
        .replace('ń', 'n') \
        .replace('ó', 'o') \
        .replace('ś', 's') \
        .replace('ż', 'z') \
        .replace('ź', 'z')
    return response
