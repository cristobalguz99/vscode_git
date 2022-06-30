from enum import auto
import os
import random as ra

autos=[];patentes=[];marcas=[];precios=[];duenos=[];doc=[];pago=[]

def limpiarPantalla():
    os.system('cls')

def validarPatente(patente):
    c=patentes.count(patente)
    if c==0:
        if patente[0:4].isalpha() and  patente[4:6].isnumeric() and len(patente)==6:
            return 0
        else:
            return 1
    else:
        return 2

def validarMarca(marca):
    if len(marca)>2 and len(marca)<15:
        return 0
    else:
        return 1

def validaPrecio(precio):
    if precio.isnumeric():
        precio=int(precio)
        if precio>1000000:
            return 0
        else:
            return 1
    else:
        return 2

def validaDueno(dueno):
    if len(dueno)>0:
        return 0
    else:
        return 1

def numeroRandom():
    numero = ra.randint(1500,3500)
    return numero
