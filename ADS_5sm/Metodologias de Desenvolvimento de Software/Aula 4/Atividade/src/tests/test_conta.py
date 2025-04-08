import csv
import sys
from pathlib import Path

# Add the src directory to Python path
sys.path.append(str(Path(__file__).parent.parent))

from conta.conta import Conta
import pytest

def load_transferir_data():
    """helper function"""
    data = []
    file_name = "transferir.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['saldo'], row['limite'], row['valor'], row['pix'], row['expected']))
    return data

def load_criar_data():
    """helper function"""
    data = []
    file_name = "criar.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['saldo'], row['limite'], row['expected']))
    return data

def load_validacoes_data():
    """helper function"""
    data = []
    file_name = "validacoes.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['saldo'], row['limite'], row['valor'], row['pix']))
    return data

class TestConta:
    @pytest.mark.parametrize("saldo,limite,valor,pix,expected",load_transferir_data())
    def test_transferir(self, saldo, limite, valor, pix, expected):
        conta = Conta(float(saldo), float(limite), "12345678910")
        if expected == 'f':
            with pytest.raises(ValueError):
                conta.transferir(pix, float(valor))
            assert conta.saldo == float(saldo)
            return
        conta.transferir(pix, float(valor))
        assert conta.saldo == float(saldo) - float(valor)

    @pytest.mark.parametrize("saldo,limite,expected",load_criar_data())
    def test_criar(self, saldo, limite, expected):
        if expected == 'f':
            with pytest.raises(ValueError):
                Conta(float(saldo), float(limite), "12345678910")
            return
        conta = Conta(float(saldo), float(limite), "12345678910")
        assert conta.saldo == float(saldo)
        assert conta.limite == float(limite)

    @pytest.mark.parametrize("saldo,limite,valor,pix",load_validacoes_data())
    def test_validacoes(self, saldo, limite, valor, pix):
        conta = Conta(float(saldo), float(limite), "12345678910")
        with pytest.raises(ValueError):
            conta.transferir("", float(valor))
        
        with pytest.raises(ValueError):
            conta.transferir(pix, float(valor))

    def test_criar_conta_pix_vazio(self):
        with pytest.raises(ValueError):
            Conta(1000, 1000, "")