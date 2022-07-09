from operator import concat
import numpy as np
import os

asientos=np.ones((10,10))
asientos=asientos.astype(str)
ruts=[];asientosusados=[];valores=[];tipos=[]
datosteatro=list()

def limpiarpantalla():
    os.system('cls')

def llenarAsientos(): 
    r=0
    c=0
    cont=1
    for x in range(100):
        cont+=1
        if x<9:
            a=x+1
            asientos[r,c]=concat("0",str(a))
        else:
            asientos[r,c]=x+1
        c+=1    
        if cont==11:
            cont=1
            r+=1
            c=0    
    return(asientos)

asientos = llenarAsientos()
buscarasi=asientos.astype(int)   

def GuardarDatos(seleccion):
    while True:
        rut = input('Ingrese su Rut: ')
        puntos=rut.find(".")
        guion=rut.find("-")
        if puntos==-1 and guion==-1:
            buscar=ruts.count(rut)
            if buscar==0:
                ruts.append(rut)
                asientosusados.append(seleccion)
                if seleccion>0 and seleccion<21:
                    valor=120000
                    tipo='Platinum'
                elif seleccion>20 and seleccion<51:
                    valor=80000
                    tipo='Gold'
                elif seleccion>50 and seleccion<101:
                    valor=50000
                    tipo='Silver'
                tipos.append(tipo)
                valores.append(valor)
                datosteatro=[ruts,asientosusados,tipos,valores]
                print('\nDatos Guardados Correctamente :D\n')
                return 0
            else:
                print('El rut ingresado ya registro un asiento')
        else:
            print('El rut no es valido')

def menu():
    while True:        
        selectmenu=input('1) Comprar Entradas \n2) Mostrar Ubicaciones Disponibles \n3) Ver listado de asistente \n4) Mostrar Ganancias Totales \n5) Salir \nIngrese opcion: ')
        limpiarpantalla()         
        if selectmenu=='1':
            cantEntra=input('Ingrese la cantidad de entradas que desea comprar Max:3: ')
            if cantEntra.isnumeric():
                cantEntra=int(cantEntra)
                if cantEntra>0 and cantEntra<4:
                    x=1
                    while x<=cantEntra:
                        x=x+1 
                        selecionarasientos()                        
                else:
                    print('Debe seleccionar una cantidad solicitada')
        elif selectmenu=='2':
            print('==============LOS ASIENTOS MARCADOS CON XX ESTAN OCUPADOS==============')
            print(asientos)
            input('Presione cualquier tecla para continuar...')
        elif selectmenu=='3':
            mostrarAsistentes()
        elif selectmenu=='4':
            CalcularMontoFinal()
        elif selectmenu=='5':
            print('ADIOS')
            break
        else:
            print('No existe el menu seleccionado')



def selecionarasientos():
    while True:
        seleccion = input('Ingrese el asiento que desea comprar: ')
        if seleccion.isnumeric():
            seleccion=int(seleccion)
            if seleccion>0 and seleccion<101:
                c,x=np.where(buscarasi == seleccion)
                if asientos[c,x]=='XX':
                    print('Asiento ya se encuentra usado')
                else:
                    asientos[c,x]='XX'
                    GuardarDatos(seleccion)
                    return 0
            else:
                print('Ese asiento no existe')


def eliminarasiento():
    seleccion = input('Ingrese el asiento que desea eliminar: ')
    if seleccion.isnumeric():
        c,x=np.where(buscarasi == int(seleccion))
        asientos[c,x]=seleccion
        print(asientos)

def mostrarAsistentes():
    try:
        n=len(ruts)
        print('Rut\tAsiento\tTipo\tValor')
        for i in range(n):            
            print(f'{ruts[i]}\t{asientosusados[i]}\t{tipos[i]}\t{valores[i]}')
    except Exception as e:
        print('A ocurrido un error esto puede deber a que no se han registrado datos :D', e)

def CalcularMontoFinal():
    try:        
        c=len(ruts)
        for i in range(c):
            if tipos[i]=='Platinum':
                p=+1
                cp=+valores[i]
            elif tipos[i]=='Gold':
                g=+1
                cg=+valores[i]
            elif tipos[i]=='Silver':
                s=+1
                cs=+valores[i]
        print('========Valores Totales========')
        print(f'Platinum 120000 cantidad: {p} total: {cp}')
        print(f'Gold 80000 cantidad: {g} total: {cg}')
        print(f'Silver 50000 cantidad: {s}total: {cs}')
        input('')
    except Exception as e:
        print('A ocurrido un error, puede deberse a que no se han ingresado datos al sistema',e)
menu()
