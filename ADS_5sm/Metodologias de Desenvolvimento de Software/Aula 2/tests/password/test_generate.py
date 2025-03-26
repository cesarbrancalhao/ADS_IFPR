import src.password.generate as gen
import pytest

data = [
    ("password123", "cbfdac6008f9cab4083784cbd1874f76618d2a97"),
    ("12345", "8cb2237d0679ca88db6464eac60da96345513964"),
]

def load_csv_data():
    """helper function"""
    from pathlib import Path
    import csv
    data = []
    file_name = "passwords.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['password'], row['encrypted']))
        return data

class TestPassword:
    def test_generate_1234(self):
        password = "1234"
        criptografado = "7110eda4d09e062aa5e4a390b0a572ac0d2c0220"
        res = gen.encrypt_password(password)
        assert res == criptografado

    @pytest.mark.parametrize("password,encrypted",data)
    def test_generate_list(self, password, encrypted):
        res = gen.encrypt_password(password)
        assert res == encrypted