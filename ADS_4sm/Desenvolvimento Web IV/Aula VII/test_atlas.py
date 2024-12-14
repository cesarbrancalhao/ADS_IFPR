import pymongo
import dotenv
import os

dotenv.load_dotenv(".env")
db_url = os.environ["MONGODB_URL"]

from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi

client = MongoClient(db_url, server_api=ServerApi("1"))
try:
    client.admin.command("ping")
    print(client.list_database_names())
except Exception as e:
    print(e)

movie = {
    "id": 218,
    "title": "Terminator",
    "genres": ['Action', 'Science Fiction'],
    'original_language': 'en-US',
    'overview': 'The Terminator', 
    'release_date': '1984-10-26',
}

db = client.get_database("pycine")
db.get_collection("movies").insert_one(movie)
print(db.get_collection("movies").find_one({"id": 218}))