import os



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