import numpy as np
import metodos as met
import os

os.system('cls')

n1 = input('ingrese un primer numero: ')
n2 = input('ingrese un segundo numero: ')

if n1.isnumeric() and n2.isnumeric():
    n1=int(n1)
    n2=int(n2)
    suma = met.suma(n1,n2)
    print('la suma de los numeros es: ',suma)
    multi=met.multi(n1,n2)
    print('la multiplicacion de los numeros es: ',multi)