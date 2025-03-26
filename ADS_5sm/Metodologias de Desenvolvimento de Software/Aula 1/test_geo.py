import math
import geo
import pytest

class TestAreas:
    def test_calcular_area_circulo(self):
        assert geo.calcular_area_circulo(1) == pytest.approx(math.pi)
        assert geo.calcular_area_circulo(10) == pytest.approx(314.159265359)
        assert geo.calcular_area_circulo(math.pi * 4) == pytest.approx(496.10043)
    
    def test_calcular_area_triangulo(self):
        assert geo.calcular_area_triangulo()