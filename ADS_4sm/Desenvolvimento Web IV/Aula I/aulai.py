import datetime

print("Hello World")

data = datetime.datetime.now()
print(data)
dia = 4
print(type(dia))

if dia == 4:
    print("Aula de Web")
    print("Inicio 19:00")
else:
    print("Outra aula")

def get_time():
    d = datetime.datetime.now()
    return datetime.datetime.time(d)

time = get_time()
print(time)

lista = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sabado", "Domingo"]
for d in lista:
    print(d)


pessoa = {
    "nome": "João",
    "cpf": "111.111.111-11",
    "idade": 20
}
print(pessoa)
print(type(pessoa))