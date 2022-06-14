
from operator import truediv
from pickle import TRUE
import os

cantmujMen=int("0")
canthombMen=int("0")

cantmujAdu=int("0")
canthombAdu=int("0")

cantmujAnc=int("0")
canthombAnc=int("0")

personas=int("0")

while True:
    os.system("cls")
    print("1.- Hombre")
    print("2.- Mujer")
    sexo = input("Indique Sexo: ")
    edad = input("indique Edad: ")


    if sexo.isnumeric() and edad.isnumeric():
        sexo = int(sexo)
        edad = int(edad)
        if (sexo==1 or sexo==2) and (edad>0 or edad<150):         
            if sexo==1:
                if edad>=1 and edad<18:
                    canthombMen=canthombMen+1
                elif edad>=18 and edad<65:
                    canthombAdu=canthombAdu+1
                else:
                    canthombAnc=canthombAnc+1
            if sexo==2:
                if edad>=1 and edad<18:
                    cantmujMen=cantmujMen+1
                elif edad>=18 and edad<60:
                    cantmujAdu=cantmujAdu+1
                else:
                    cantmujAnc=cantmujAnc+1

            personas+=1
        else:
            print("Ingreso un dato invalido")

        respuesta = input("Presione 1 para terminar el dia: ")
        if respuesta=='1':
            break
        else:
            os.system("cls")
    else:
        print("Ingrese un valor que corresponda")
os.system("cls")
print(f"Cantidad de personas ingresadas el dia de hoy: {personas}")
print(f"Mujeres Jovenes : {cantmujMen}")
print(f"Mujeres Adultas : {cantmujAdu}")
print(f"Mujeres Ancianas: {cantmujAnc}")
print(f"Hombres Jovenes : {canthombMen}")
print(f"Hombres Adultos : {canthombAdu}")
print(f"Hombres Adultos : {canthombAnc}")

