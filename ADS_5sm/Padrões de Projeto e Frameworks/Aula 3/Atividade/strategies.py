from abc import ABC, abstractmethod

class Envio(ABC):
    @abstractmethod
    def calcular_total(self, peso: float, valor: float) -> float:
        pass

class Aereo(Envio):
    def calcular_total(self, peso: float, valor: float) -> float:
        return peso * 25 + valor
    
class Express(Envio):
    def calcular_total(self, peso: float, valor: float) -> float:
        return peso * 15 + valor
    
class Correios(Envio):
    def calcular_total(self, peso: float, valor: float) -> float:
        return peso * 10 + valor
    
def create(tipo: str) -> Envio:
    """ 
    Factory 
    """
    if tipo == "A":
        return Aereo()
    
    if tipo == "E":
        return Express()
    
    if tipo == "C":
        return Correios()

    raise ValueError("invalid type")