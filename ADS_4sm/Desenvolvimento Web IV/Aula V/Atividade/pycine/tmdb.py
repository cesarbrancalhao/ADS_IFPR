import requests
import dotenv # type: ignore
import os
from pycine.models import Artist, PeopleResults, ArtistMovies
dotenv.load_dotenv(".env") 
token = os.environ["API_TOKEN"] 

def get_json(url: str, params: dict = None) -> dict:
    headers = {
        "accept": "application/json",
        "Authorization": f"Bearer {token}"
    }
    data = requests.get(url, headers=headers, params=params)
    return data.json()

def get_artist(id: int):
    url = f"https://api.themoviedb.org/3/person/{id}?language=en-US"
    return Artist.model_validate(get_json(url))

def search_person(name: str):
    url = f"https://api.themoviedb.org/3/search/person"
    return PeopleResults.model_validate(get_json(url, {
        "query": name,
        "page": 1,
        "language": "en-US",
        "include_adult": "false",
    }))

def trending_people(period: str = "week"):
    url = f"https://api.themoviedb.org/3/trending/person/{period}?language=en-US"
    return PeopleResults.model_validate(get_json(url))

def artist_movies(id: int):
    url = f"https://api.themoviedb.org/3/person/{id}/movie_credits?language=en-US"
    return ArtistMovies.model_validate(get_json(url))