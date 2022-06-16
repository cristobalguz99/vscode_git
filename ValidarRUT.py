import numpy as np
def validarDV(rut):
    #creacion de lista
    ruts=list() 
    #creacion de variables a usar
    suma=0
    c=2 #contador
    #validacion numerico
    if rut.isnumeric():
        #recorrer numero a numero
        for i in rut:
            #guardar numero en lista
            ruts.append(int(i))
        #transformamos lista en array
        lista=np.array(ruts)[::-1]
        #recorrer segun largo de rut
        for i in range(len(rut)):
            #guardar resultado
            suma+=int(lista[i])*c 
            #validar si es mayor que 7
            if c<7:
                #sumar 1 al contador
                c+=1
            else: 
                #volver a asignar valor predeterminado
                c=2 
        #dividir suma total por 11  
        v2=suma / 11
        #transformar variable a entero
        v2=int(v2)
        #multiplicar resultado po 11
        v3=v2*11
        #restar suma a varible v3
        v4=suma-v3
        #restamos 11 a v4
        v5=11-v4
        #validamos si resultado es 11
        if int(v5)==11:            
            dv=0 #asignamos valor 0
        #validamos si resultado es 10
        elif int(v5)==10: 
            dv='k'#asignamos valor K
        else:
            dv=v5 #en cualquier otro caso asignar valor entregado
        return dv #retornamos resultado al usuario
    else:
        print('El rut ingresado no es valido')