from bs4 import BeautifulSoup
from requests import get
import string
import os
from helpers.log import setup_custom_logger

logger = setup_custom_logger('root')


def get_links_to_songs(musician):
    """
    Scraps links to all songs texts of chosen musician.
    Uses 'tekstowo.pl' website to scrap data.
    """
    links_to_songs = []
    page_number = 1

    while True:
        page = get(
            f"https://www.tekstowo.pl/piosenki_artysty,{musician},data,rosnaco,strona,{page_number}.html"
        ).content
        bs = BeautifulSoup(page, 'html.parser')

        list_of_songs = bs.find('div', class_="ranking-lista")
        songs = list_of_songs.find_all('a', class_="title")

        if len(songs) > 1:
            for link in songs:
                links_to_songs.append(link['href'])
            page_number += 1
        else:
            break
    return links_to_songs


def get_text_of_song(url):
    """
    Returns scrapped text of a song from chosen link.
    Uses 'tekstowo.pl' website to scrap data.
    """
    song_page = get(f"https://www.tekstowo.pl{url}").content
    bs_song = BeautifulSoup(song_page, 'html.parser')

    song_title = bs_song.find('div', class_="belka row mx-0 px-3")
    song_title_clean = song_title.find('h1').get_text().translate((str.maketrans('', '', string.punctuation)))
    song_text_find = bs_song.find('div', class_="inner-text")
    if song_text_find:
        song_text = song_text_find.get_text()
        song_text_clean = song_text.translate((str.maketrans('', '', string.punctuation)))\
            .replace('Zwrotka', '').replace('Refren', '')
    else:
        song_text_clean = '-'
    return song_title_clean, song_text_clean


def save_song_text(musician, title, text):
    """
    Saves song text to .txt file.
    """
    with open(f'/app/files_songs/{musician}/{title}.txt', 'w') as file:
        file.write(text)


def get_songs_for_musician(musician):
    """
    Scraps and saves all songs of chosen musician.
    """
    links = get_links_to_songs(musician=musician)
    number = 100

    try:
        os.mkdir(f"/app/files_songs/{musician}")
    except FileExistsError:
        logger.info(f"[x] Folder for musician '{musician}' already exists.")

    for link in links:
        title, text = get_text_of_song(link)
        save_song_text(musician, f"{number} {title}", text)
        number += 1
