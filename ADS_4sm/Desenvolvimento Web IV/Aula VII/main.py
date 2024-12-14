from fastapi import FastAPI, Body, HTTPException, status
from fastapi.responses import Response
from pydantic import ConfigDict, BaseModel, Field
from pydantic.functional_validators import BeforeValidator
from typing_extensions import Annotated
from bson import ObjectId
import motor.motor_asyncio
from pymongo import ReturnDocument
from pycine import models

app = FastAPI()

from fastapi.middleware.cors import CORSMiddleware
origins = [
    "http://localhost",
    "http://localhost:*",
    "http://localhost:5173",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

import dotenv
import os
dotenv.load_dotenv(".env") 
db_url = os.environ["MONGODB_URL"]

client = motor.motor_asyncio.AsyncIOMotorClient(db_url)
db = client.pycine
movies_collection = db.get_collection("movies")


PyObjectId = Annotated[str, BeforeValidator(str)]

@app.get("/find/", 
         response_description="List all movies", 
         response_model = models.MovieCollection, 
         response_model_by_alias=False)
async def list_movies():
    return models.MovieCollection(movies=await movies_collection.find().to_list(20))
