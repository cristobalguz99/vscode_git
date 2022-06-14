from cgi import print_arguments
from tkinter import N
import os
from wsgiref import validate
from idna import valid_contextj

os.system('cls')

ruts=[]
nombres=[]
edads=[]
notas=[]
alumnos=[]
while True:
    os.system('cls')
    print('MENU DE PANITA')
    me=input('1) Agregar Alumno \n2) Consultar datos por run \n3) Listar todos los alumnos \n4) Salir \nDigite el numero que necesita acceder: ')

    if me=='1':
        os.system('cls')
        while True:
            
            rut=input('Ingrese Rut: ')
            nombre=input('Ingrese Nombre: ')
            edad=input('Ingrese Edad: ')
            nota=input('Ingrese Nota: ')

            largorut=len(rut)
            largonombre=len(nombre)    
            valiLista=0
            if largorut==8 and largonombre>3 and largonombre<100 and int(edad)>1 and int(edad)<150 and nota>0 and nota<8:
                try:
                    valiLista = ruts.count(rut)

                    ruts.append(rut)
                    nombres.append(nombre)
                    edads.append(edad)
                    notas.append(nota)
                    alumnos=[ruts, nombres, edads, notas]
                    print(f'Alumno {nombre} fue agregado con exito')
                    
                except Exception as e:
                    print(f'A ocurrido un error {e}')
            else:
                print('Un Valor no corresponde con lo necesario')
            respuesta=input('Presione 1 se desea agregar otro alumno: ')
            if respuesta!='1':
                break
            else:
                os.system('cls')
    elif me=='2':
        while True:
            os.system('cls')
            rut=input('Ingrese Rut a buscar: ')

            try:
                c= ruts.count(rut)
                if c!=0:
                    print(rut)
                    x=ruts.index(rut)
                    for i in range(c):
                        print(f'{alumnos[0][x]} {alumnos[1][x]} {alumnos[2][x]} {alumnos[3][x]}')
                        x+=1
                else:
                    print(f'El rut {rut} no existe')
                respuesta=input('ingrese 1 si desea buscar otro alumno:')
                if respuesta!='1':
                    break
                else:
                    os.system('cls')

            except Exception as e:
                print(f'A ocurrido un error {e}')
    elif me=='3':
        os.system('cls')
        try:
            n=len(ruts)
            for i in range(n):
                print(f'{alumnos[0][i]} {alumnos[1][i]} {alumnos[2][i]} {alumnos[3][i]}')
            respuesta=input('Presione cualquier tecla para continuar')
        except Exception as e:
             print(f'A ocurrido un error {e}')
    elif me=='4':
        os.system('cls')
        print('ADIOS')
        break
    else:
        print('No existe el menu seleccionado')