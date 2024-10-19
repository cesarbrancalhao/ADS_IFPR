from typing import Union

from fastapi import FastAPI

app = FastAPI()

@app.get("/par/{num}")
def par(num: int) -> dict[str, str]:
    if num % 2 == 0: return {"par": "Sim"}
    return {"par": "Não"}

@app.get("/hora/{cidade}")
def hora(cidade: str) -> dict[str, str]:
    import datetime
    hora = datetime.datetime.now()

    if cidade == "brasilia":
        return {"hora": hora.strftime("%H:%M:%S")}
    
    if cidade == "tokyo":
        hora += datetime.timedelta(hours=12)
        return {"hora": hora.strftime("%H:%M:%S")}
    
    if cidade == "londres":
        hora += datetime.timedelta(hours=4)
        return {"hora": hora.strftime("%H:%M:%S")}
    
    return {"error": "Cidade não encontrada"}

@app.get("/diadasemana")
def get_dia() -> dict[str, str]:
    import datetime
    dia = {
        0: "Domingo",
        1: "Segunda",
        2: "Terça",
        3: "Quarta",
        4: "Quinta",
        5: "Sexta",
        6: "Sabado"
    }
    d = datetime.datetime.now()
    return {"dia": dia.get(d.weekday())}

@app.get("/frase")
def get_quotes() -> dict[str, str]:
    import requests
    url = "https://zenquotes.io/api/today"
    res = requests.get(url)
    json = res.json()[0]
    return {"frase": json["q"]}
