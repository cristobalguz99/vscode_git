import metodos as me
import numpy as np

me.limpiarPantalla()

nombres=[];ruts=[];telefonos=[];bancos=[];DatosUsuarios=[]

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

def RegistroUsuario():
    while True:
        me.limpiarPantalla()
        nombre=input('Ingrese nombre del usuario: ')
        rut=input('Ingrese rut del usuario: ')
        exist=ruts.count(rut)
        if exist==0:
            telefono=input('Ingrese telefono del usuario: ')
            banco=input('Ingrese el banco del usuario: ')
            try:
                if (len(nombre)>0 and nombre.isalpha() and len(rut)>0 and telefono.isnumeric() and len(banco)>0):
                    nombres.append(nombre)  
                    ruts.append(rut)
                    telefonos.append(telefono)
                    bancos.append(banco)
                    DatosUsuarios=[nombres,ruts,telefonos,bancos]
                    return('Registro Completado con exito')
                else:
                    print('un dato esta mal ingresado')
            except Exception as e:
                print('Ha ocurrido un error favor volver a ingresar el registro', e)
        else:
            return('Usuario ya se encuentra registrado')

algo=llenarAsientos()

algo=algo.astype(str)
print(algo)

algo=algo.astype(int)
print(algo)

print('==================================')
while True:
    #me.limpiarPantalla()
    sel=input('MENU\n 1) Registrar Usuario\n 2) Iniciar Sesion\n 3) Cerrar\n ingrese un opcion: ')
    if sel=='1':
        reg=RegistroUsuario()
        print(reg)
        input(f'Presiones cualquier tecla para continuar')
    elif sel=='2':
        pass
    else:
        break
