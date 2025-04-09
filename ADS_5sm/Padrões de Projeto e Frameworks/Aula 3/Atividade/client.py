from rich import print
from context import Context

def select_envio():
    print("-"*40)
    print("Tipos de envio disponiveis")
    print("-"*40)
    print("""
    1 - Aereo
    2 - Express
    3 - Correios
    """)
    
    choice = int(input("Escolha a opção: "))
    
    from strategies import create
    
    if choice == 1: 
        return create('A')
    
    if choice == 2:
        return create('E')
    
    if choice == 3:
        return create('C')
    
    raise ValueError("invalid choice")

if __name__ == "__main__":
    
    peso = float(input("Informe o peso do produto: "))
    if peso <= 0:
        raise ValueError("Peso deve ser maior que zero.")
    
    valor = float(input("Informe o valor do produto: "))
    if valor <= 0:
        raise ValueError("Valor deve ser maior que zero.")
    
    strategy = select_envio()
    
    context = Context(strategy)
    total = context.total(peso, valor)
    print(f"Valor total do produto: {total}")
    print("━"*40)