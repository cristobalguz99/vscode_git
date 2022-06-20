import os
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
    ruts=list() 
    suma=0
    c=2
    if rut.isnumeric():
        for i in rut:
            ruts.append(int(i))
        lista=np.array(ruts)[::-1]
        for i in range(len(rut)):
            suma+=int(lista[i])*c
            if c<7:
                c+=1
            else:
                c=2
        v2=suma / 11
        v2=int(v2)
        v3=v2*11
        v4=suma-v3
        v5=11-v4
        if int(v5)==11:          
            dv=0
        elif int(v5)==10:
            dv='k'
        else:
            dv=v5
        return dv
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
