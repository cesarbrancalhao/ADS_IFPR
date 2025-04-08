import Atividade.geo as geo
import pytest
import csv
from pathlib import Path

def load_csv_data():
    """helper function"""
    data = []
    file_name = "geo.csv"
    file_path = Path(__file__).parent / file_name
    with Path.open(file_path, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append((row['teste'], row['p1'], row['p2'], row['expected']))
        return data

class TestAreas:
    @pytest.mark.parametrize("teste, p1, p2, expected", load_csv_data())
    def test_areas(self, teste, p1, p2, expected):
        param = float(p1)
        param2 = float(p2)
        res = float(expected) if expected != '' else -1

        if teste == "circulo":
            if res == -1:
                with pytest.raises(ValueError):
                    res = geo.calcular_area_circulo(param)
                assert res == -1
                return
            
            assert geo.calcular_area_circulo(param) == pytest.approx(res)
        
        if teste == "triangulo":
            if res == -1:
                with pytest.raises(ValueError):
                    res = geo.calcular_area_triangulo(param)
                assert res == -1
                return
            
            assert geo.calcular_area_triangulo(param) == pytest.approx(res)
        
        if teste == "losango":
            if res == -1:
                with pytest.raises(ValueError):
                    res = geo.calcular_area_losango(param, param2)
                assert res == -1
                return
            
            assert geo.calcular_area_losango(param, param2) == pytest.approx(res)
        
        if teste == "pentagono":
            if res == -1:
                with pytest.raises(ValueError):
                    res = geo.calcular_area_pentagono(param, param2)
                assert res == -1
                return
            
            assert geo.calcular_area_pentagono(param, param2) == pytest.approx(res)