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
                links_to_songs.append((link['href'], link['title']))
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

    song_text_find = bs_song.find('div', class_="inner-text")
    if song_text_find:
        song_text = song_text_find.get_text()
        song_text_clean = song_text.translate((str.maketrans('', '', string.punctuation)))\
            .replace('Zwrotka', '').replace('Refren', '')
    else:
        song_text_clean = '-'
    return song_text_clean


def save_song_text(musician, title, text):
    with open(f'/app/files_songs/{musician}/{title}.txt', 'w') as file:
        file.write(text)


def check_if_song_downloaded(musician, title):
    directory = f'/app/files_songs/{musician}/'
    file_list = os.listdir(directory)
    for file in file_list:
        if title in file:
            return True
    return False


def get_songs_for_musician(musician):
    links = get_links_to_songs(musician=musician)
    number = 100

    try:
        os.mkdir(f"/app/files_songs/{musician}")
    except FileExistsError:
        logger.info(f"[x] Folder for musician '{musician}' already exists.")

    for link in links:
        title = link[1].translate((str.maketrans('', '', string.punctuation)))
        if check_if_song_downloaded(musician, title):
            logger.info(f"[x] Song '{title}' already downloaded.")
            number += 1
        else:
            text = get_text_of_song(link[0])
            save_song_text(musician, f"{number} {title}", text)
            number += 1
