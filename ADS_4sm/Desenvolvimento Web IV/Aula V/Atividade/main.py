from fastapi import FastAPI
app = FastAPI()
import pycine.tmdb as db

@app.get("/")
def hello():
    return {"status": "working"}

#1. encontra person por id
@app.get("/artist/{id}")
def get_artist(id: int):
    return db.get_artist(id)

#2. encontra person por nome
@app.get("/search/person/{name}")
def search_person(name: str):
    return db.search_person(name)

#3. person popular (trending)
#5. artista trending da semana
@app.get("/trending/person/{period}")
def trending_people(period: str = "week"):
    return db.trending_people(period)

#4.todos os filmes de um artista
@app.get("/artist/movies/{id}")
def artist_movies(id: int):
    return db.artist_movies(id)