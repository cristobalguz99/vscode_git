import metodos as me
import numpy as np

me.limpiarPantalla()

def llenarAsientos():
    asientos=np.ones((7,6))
    r=0
    c=0
    cont=1
    for x in range(42):
        cont+=1
        asientos[r,c]=x+1
        c+=1    
        if cont==7:
            cont=1
            r+=1
            c=0
    asientos = asientos.astype(int)
    #t2 = t2.astype(str)
    return(asientos)

algo=llenarAsientos()



