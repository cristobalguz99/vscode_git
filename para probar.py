from operator import concat
import numpy as np
asientos=np.ones((7,6))
asientos=asientos.astype(str)

def llenarAsientos(): 
    r=0
    c=0
    cont=1
    for x in range(42):
        cont+=1
        if x<9:
            a=x+1
            asientos[r,c]=concat("0",str(a))
        else:
            asientos[r,c]=x+1    
        c+=1    
        if cont==7:
            cont=1
            r+=1
            c=0
    
    return(asientos)

def selecccionarAsiento(numero):
    c,x=np.where(buscarasi == int(numero))
    print(c,x)
    asientos[c,x]='xx'
    return(asientos)

asientos = llenarAsientos()
buscarasi=asientos.astype(int)

print(asientos)
print(buscarasi)
seleccion = input('Ingrese el asiento que desea comprar: ')
if seleccion.isnumeric():
    if int(seleccion)<10:
        seleccion=concat("0",seleccion)
        asie=selecccionarAsiento(seleccion)
        print('su asiento fue guardado :D')
        print(asientos)
    else:
        asie=selecccionarAsiento(seleccion)
        print('su asiento fue guardado :D')
        print(asientos)

seleccion = input('Ingrese el asiento que desea eliminar: ')
if seleccion.isnumeric():
    c,x=np.where(buscarasi == int(seleccion))
    asientos[c,x]
    print(c,x)