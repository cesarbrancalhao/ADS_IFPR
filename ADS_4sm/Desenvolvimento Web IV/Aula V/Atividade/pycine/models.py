from pydantic import BaseModel
from typing import Optional

class Artist(BaseModel):
    id: int
    name: str
    also_known_as: Optional[list] = None
    biography: Optional[str] = None
    birthday: Optional[str] = None
    deathday: Optional[str] = None
    gender: int
    place_of_birth: Optional[str] = None
    popularity: Optional[float] = None
    profile_path: Optional[str] = None

class Person(BaseModel):
    id: int
    name: str
    original_name: str
    gender: int
    known_for_department: Optional[str] = None
    popularity: Optional[float] = None
    profile_path: Optional[str] = None
    
class PeopleResults(BaseModel):
    page: int
    results: list[Person]
    total_pages: int
    total_results: int

class Movie(BaseModel):
    id: int
    title: str
    genres: Optional[list] = None
    original_language: str
    overview: str
    popularity: Optional[float] = None
    poster_path: Optional[str] = None
    release_date: str
    vote_count: Optional[int] = None

class MovieResults(BaseModel):
    page: int
    results: list[Movie]
    total_pages: int
    total_results: int

class ArtistMovies(BaseModel):
    cast: list[Movie]