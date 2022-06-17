import os
from re import X
from tracemalloc import start
import numpy as np

#sin argumentos y sin retorno
def saludar():
    input('Buenas Noches')

#sin argumentos y sin retorno
def sumar(): 
    try:
        a=int(input('ingrese un valor: '))
        b=int(input('ingrese un valor: '))
        c=a+b
        return c
    except Exception as e:
        print(e)

#con argumentos y sin retorno
def sumar2(a,b): 
    c=a+b
    print(c)

#con argumentos y con retorno
def sumar3(a,b): 
    c=a+b
    return c

def suma(a,b):
    return a+b
def multi(a,b):
    return a*b

def introduction(first_name, last_name):
    print("Hola, mi nombre es", first_name, last_name)

def es_primo(num):
    for n in range(2, num):
        if num % n == 0:
            return False
    return True

def limpiarPantalla():
    os.system('cls')

def validarDV(rut):
    #creacion de lista
    ruts=list() 
    #creacion de variables a usar
    suma=0
    c=2 #contador
    #validacion numerico
    if rut.isnumeric():
        #recorrer numero a numero
        for i in rut:
            #guardar numero en lista
            ruts.append(int(i))
        #transformamos lista en array
        lista=np.array(ruts)[::-1]
        #recorrer segun largo de rut
        for i in range(len(rut)):
            #guardar resultado
            suma+=int(lista[i])*c 
            #validar si es mayor que 7
            if c<7:
                #sumar 1 al contador
                c+=1
            else: 
                #volver a asignar valor predeterminado
                c=2 
        #dividir suma total por 11  
        v2=suma / 11
        #transformar variable a entero
        v2=int(v2)
        #multiplicar resultado po 11
        v3=v2*11
        #restar suma a varible v3
        v4=suma-v3
        #restamos 11 a v4
        v5=11-v4
        #validamos si resultado es 11
        if int(v5)==11:            
            dv=0 #asignamos valor 0
        #validamos si resultado es 10
        elif int(v5)==10: 
            dv='k'#asignamos valor K
        else:
            dv=v5 #en cualquier otro caso asignar valor entregado
        return dv #retornamos dv al usuario
    else:
        print('El rut ingresado no es valido')

def fibonacci(sec):  

    if sec.isnumeric():
        sec=int(sec)
        secs=[]
        aux=0
        x=0
        y=1
        for i in range(sec):
            if sum(secs)<2:
                secs.append(1)
            elif i==2:
                aux=sum(secs)
                secs.append(aux)
            else:
                x=secs[i-1]
                y=secs[i-2]
                aux=x+y
                secs.append(aux)
            print(secs)


            
