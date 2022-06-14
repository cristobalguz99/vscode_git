
import os
from traceback import print_tb

nombres=list()
apellidos=list()
ambos = list()

n=4

for i in range(n):

    os.system('cls')
    nombre = input('ingrese nombre: ')
    apellido = input('ingrese apellido: ')

    nombres.append(nombre)
    apellidos.append(apellido)

    nomcomp=nombre+' '+apellido
    ambos.append(nomcomp)

os.system('cls')

for i in range(n):
    ##print(f'{nombres[i]}{apellidos[i]}')
    print(nombres[i]+' '+apellidos[i])


print('')
print('Orden de nombres')
print('')
cont=int('0')
apellidos.sort()

while True:

    for i in range(n):
        nombre =nombres[i]+' '+apellidos[cont]

        if ambos[i] == nombre:
            print(nombre)
            cont+=1
            break

    if cont==4:
        break
