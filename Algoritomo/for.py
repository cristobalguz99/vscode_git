from operator import concat
import os

contador=0
while True:   

    os.system('cls')
    variable = input("Ingrese algo numerico: ")

    if variable.isnumeric():
        variable=int(variable)
        contador=contador+variable
        
        res = input("Ingrese 1 para continuar")

        if res!='1':
            print(contador)
            break
    else:
        print("Ingresa bien la wea")

