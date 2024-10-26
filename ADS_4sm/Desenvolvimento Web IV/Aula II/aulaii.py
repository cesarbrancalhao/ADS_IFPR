from typing import Union

from fastapi import FastAPI

app = FastAPI()

db = {
    "br": { "name": "Brasil", "capital": "Brasilia" },
    "ch": { "name": "Chile", "capital": "Santiago" },
    "ar": { "name": "Argentina", "capital": "La Plata" },
    "ca": { "name": "Canada", "capital": "Ottawa" },
    "us": { "name": "Estados Unidos", "capital": "Washington" },
    "uk": { "name": "Reino Unido", "capital": "London" },
    "jp": { "name": "Japão", "capital": "Tokio" },
    "fr": { "name": "França", "capital": "Paris" },
    "de": { "name": "Alemanha", "capital": "Berlin" },
    "it": { "name": "Itália", "capital": "Roma" },
    "es": { "name": "Espanha", "capital": "Madrid" },
    "mx": { "name": "México", "capital": "Mexico" },
    "nl": { "name": "Holanda", "capital": "Amsterdam" },
    "au": { "name": "Austrália", "capital": "Canberra" },
    "nz": { "name": "Nova Zelândia", "capital": "Wellington" }
}

@app.get("/pais/{sigla}")
def get_pais(sigla: str) -> dict:
    if sigla in db: return db.get(sigla)
    return {"error": "Pais não encontrado"}

@app.get("/frase")
def get_quotes():
    import requests
    url = "https://zenquotes.io/api/today"
    res = requests.get(url)
    json = res.json()[0]
    return {"frase": json["q"], "autor": json["a"]}