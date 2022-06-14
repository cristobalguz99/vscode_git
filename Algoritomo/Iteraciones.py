from encodings import normalize_encoding


nombre = input('Ingrese un nombre:')
contador = 0
nombre = nombre.lower()
for i in nombre:
    
    if i == 'a' or i == 'e' or i == 'i' or i == 'o' or i == 'u':
        contador=contador+1
print('las vocales encontradas son:',contador)