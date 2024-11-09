from fastapi import FastAPI
app = FastAPI()
import pycine.models as MovieResults
import pycine.tmdb as db

@app.get("/")
def hello():
    return {"status": "pycine is running"}

@app.get("/movie/{id}")
def get_movie(id: int):
    return db.get_movie(id)

@app.get("/search/movie")
def search_movies():
    return db.search_movies()