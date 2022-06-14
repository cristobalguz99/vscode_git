import numpy as np
import metodos as me

me.limpiarPantalla()

cont = 0
impares = 0

arreglo_1 = np.random.randint(0, 1001, size=10)

for i in arreglo_1:
    if i % 2 == 0:
        cont = cont + 1
    else:
        impares = impares + i
        
    valida = me.es_primo(int(i))
    if valida == True:
        print(f'El numero {i} es primo \n')


print("Arreglo: ", arreglo_1)
print("Cantidad de elementos pares: ", cont)
print("Suma de elementos impares: ", impares)

