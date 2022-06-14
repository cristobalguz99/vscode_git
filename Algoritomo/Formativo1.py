from operator import truediv
from traceback import print_tb
from unicodedata import numeric
import os


os.system('cls')
num = list()

while True:
    numero=input("Ingrese un numero del 1 al 1500: ")

    if numero.isnumeric():
        numero=int(numero)
        if numero>0 and numero<=1500:
            num.append(numero)
        else:
            print("")
        res = input("Presione 1 para salir: ")
        if res=='1':
            break        
    else:
        print("El valor ingresado no es numerico")
num.sort(reverse=False)
print(num)


