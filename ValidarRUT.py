import numpy as np
import metodos as met
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
        dv=suma / 11
        dv=int(dv)
        dv=dv*11
        dv=suma-dv
        dv=11-dv
        if int(dv)==11:            
            dv=0
        elif int(dv)==10: 
            dv='k'
        return dv
    else:
        print('El rut ingresado no es valido')
met.limpiarPantalla()
rut = input('Ingrese rut sin punto y con guion ej:111111-1: ')
try:
    result=rut.find("-")
    if result!=-1:
        num=rut.split('-')
        xdv=validarDV(num[0])
        dv=num[1]
    else:
        dv=rut[-1]
        rut=rut[0:len(rut)-1]
        print(rut)
        xdv=validarDV(rut)
        input    
    if str(xdv)==dv:
        print(f'El rut {rut} es correcto')
    else:
        print(f'El rut {rut} no es correcto')
except Exception as e:
    print('rut mal ingresado')
