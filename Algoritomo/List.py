from encodings import normalize_encoding
import os

os.system('cls')

nombres = [3, 1, 2]
numeros = [4,5]
nombres = nombres+numeros
print('Lista completa')
print(nombres)
nombres.sort()
print('Lista Ordenada')
print(nombres)
print('Lista contar')
x=nombres.count(4)
print(x)
c=nombres.copy()
print('Lista original')
print(nombres)
print('Lista copiada')
print(c)
nombres.clear()
print('Lista limpia')
print(nombres)