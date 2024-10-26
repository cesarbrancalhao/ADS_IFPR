import requests
from fastapi import FastAPI

app = FastAPI()

headers = {
    "accept": "application/json",
    "Authorization": "Bearer {API_key}"
}


@app.get("/movies")
def get_filmes():
    url = "https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc"
    data = requests.get(url, headers=headers).json()

    results = data["results"]
    titles = []
    for m in results:
        titles.append(m["title"] + " - " + str(m["release_date"]))

    return titles

@app.get("/artista")
def get_artista():
    url = "https://api.themoviedb.org/3/search/person"
    nome = "Taylor"
    data = requests.get(url, headers=headers, params={"query": nome}).json()
    
    return data["results"][0]

@app.get("/movie/{title}")
def get_movie(title: str):
    url = "https://api.themoviedb.org/3/search/movie"
    data = requests.get(url, headers=headers, params={"query": title}).json()
    return data