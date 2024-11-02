import requests
from fastapi import FastAPI
import dotenv
import os

dotenv.load_dotenv(".env")
token = os.environ("API_TOKEN")

def get_json(url: str):
    headers = {
        "accept": "application/json",
        "Authorization": f"Bearer {token}"
    }
    return requests.get(url, headers=headers).json()

app = FastAPI()
@app.get("/movies")
def get_movies():
    url = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc"
    data = get_json(url)
    results = data["results"]
    titles = []
    for m in results:
        titles.append(m["title"] + " - " + str(m["release_date"]))
    return titles