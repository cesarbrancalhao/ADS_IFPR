import math

def calcular_area_circulo(raio):
    if raio <= 0:
        return None
    return math.pi * raio**2

def calcular_area_triangulo(lado):
    if lado <= 0:
        return None
    return (math.sqrt(3) * lado**2) / 4

def calcular_area_losango(diagonal_menor, diagonal_maior):
    if diagonal_maior <= 0 or diagonal_menor <= 0:
        return None
    return (diagonal_maior * diagonal_menor) / 2

def calcular_area_pentagono(lado, apotema):
    if lado <= 0 or apotema <= 0:
        return None
    return (5 * lado * apotema) / 2