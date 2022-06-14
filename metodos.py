import os

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