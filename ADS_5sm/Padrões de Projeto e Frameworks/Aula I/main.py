from abc import ABC, abstractmethod


class Pessoa(ABC):
   def __init__(self, nome: str, renda: float):
       self.nome = nome
       self.renda = renda


   @abstractmethod
   def calculaIR(self):
       pass


class PessoaFisica(Pessoa):
   def __init__(self, nome: str, renda: float, cpf: str):
       super().__init__(nome, renda)
       self.cpf = cpf
  
   def calculaIR(self):
       return self.renda * 0.25


class PessoaJuridica(Pessoa):
   def __init__(self, nome: str, renda: float, cpf: str):
       super().__init__(nome, renda)
       self.cpf = cpf


   def calculaIR(self):
       return self.renda * 0.15

pf = PessoaFisica("Maria", 100_000, "100.9999.000-99")
print(pf.calculaIR())