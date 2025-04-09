from strategies import Aereo, Express, Correios

class Context():

    def __init__(self, strategy: Aereo | Express | Correios):
        self.strategy = strategy

    def total(self, peso: float, valor: float) -> float:
        return self.strategy.calcular_total(peso, valor) 