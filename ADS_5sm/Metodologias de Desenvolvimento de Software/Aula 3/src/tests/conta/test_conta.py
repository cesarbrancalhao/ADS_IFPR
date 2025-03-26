import src.conta.conta as c
import pytest

data = []

def load_csv_data():
    """helper function"""
    from pathlib import Path
    import csv
    data = []
    file_name = "contas.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['saldo'], row['limite'], row['valor']))
        return data

class TestConta:
    @pytest.mark.parametrize("saldo,limite,valor",load_csv_data())
    def test_transferir(self, saldo, limite, valor):
        conta = c.Conta(float(saldo), float(limite), "10000-0")
        conta.transferir("testepix123", float(valor))
        assert conta.saldo < 0

        #O arquivo CSV contém todos os casos de teste para a função transferir
        # pix no valor do saldo
        # pix no valor do saldo + limite
        # pix com valor acima do saldo + limite
        # o resultado esperado são 2 erros, na quarta e sexta linha