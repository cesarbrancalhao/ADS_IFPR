import requests
import dotenv
import os
from pycine.models import Movie, MovieResults
dotenv.load_dotenv(".env") 
token = os.environ["API_TOKEN"] 

def get_json(url: str, params: dict = None) -> dict:
    headers = {
        "accept": "application/json",
        "Authorization": f"Bearer {token}"
    }
    data = requests.get(url, headers=headers, params=params)
    return data.json()

def get_movie(id: int):
    url = f"https://api.themoviedb.org/3/movie/{id}?language=en-US"
    data = get_json(url)
    movie = Movie.model_validate(data)
    return movie

def search_movies():
    url = "https://api.themoviedb.org/3/search/movie"
    params = {
        "include_adult": "false",
        "include_video": "false",
        "language": "en-US",
        "page": 1,
        "query": "Star Wars",
        "sort_by": "popularity.desc"
    }
    search = get_json(url, params)
    movie = MovieResults.model_validate(search["results"][0])
    return movie