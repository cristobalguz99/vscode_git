from audioop import reverse
from traceback import print_tb
import numpy as nm
import random as rn


arregloA=nm.random.randint(0,501,size=100)

#print(arregloA)

"""for i in range(len(arregloA)):
    if i % 2==0:
        print(arregloA[i])"""


arreglob=nm.sort(arregloA)[::-1]
arregloc=nm.sort(arregloA)

arregloe=arregloA*3

total=arregloe.sum()
promedio = arregloe.mean()

print(arregloe)
print(arregloA)
print(f'suma del segundo arreglo: {total}')
print(f'promedio del segundo arreglo: {promedio}')
print(f'numero Menor: {arregloA.min()}')
print(f'numero Mayor: {arregloA.max()}')


for i in range(len(arregloA)):
    if arregloA[i] == arreglob[0]:
        print(f"posicion NM= {i}")

    