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
        conta = c.Conta(saldo,limite,"10000-0")
        conta.transferir("testepix123", valor)
        assert c.saldo < 0