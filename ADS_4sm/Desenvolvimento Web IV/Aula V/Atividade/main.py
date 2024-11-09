from fastapi import FastAPI
app = FastAPI()
import pycine.models as MovieResults
import pycine.tmdb as db

@app.get("/")
def hello():
    return {"status": "pycine is running"}

@app.get("/artist/{id}")
def get_person(id: int):
    return db.get_person(id)

@app.get("/search/movie") #todo
def search_movies():
    return db.search_movies()