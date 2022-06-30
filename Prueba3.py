from enum import auto
import MetodosPrueba3 as met
import random as ra

autos=[];patentes=[];marcas=[];precios=[];duenos=[]

while True:
    met.limpiarPantalla
    opcion = input('MENU :D\n 1) Grabar\n 2) Buscar\n 3) Imprimir Certificado\n 4) Salir\n Ingrese un opcion:')
    if opcion == '1':
        met.limpiarPantalla()
        while True:
            patente = input('Ingrese patente del Vehiculo: \t')
            valida = met.validarPatente(patente)
            if valida == 0:
                patentes.append(patente)
            elif valida == 1:
                input(f'La patente {patente} no es valida, Presione cualquier tecla para continuar')
                break
            elif valida == 2:
                input(f'La patente {patente} ya se encuentra registrada, Presione cualquier tecla para continuar')
                break

            marca = input('Ingrese marca del Vehiculo: \t')
            valida = met.validarMarca(marca)
            if valida != 0:
                input('La marca no cumple, Presione cualquier tecla para continuar')
                break
            else:
                marcas.append(marca)

            precio = input('Ingrese precio del Vehiculo: \t')
            valida = met.validaPrecio(precio)
            if valida == 1:
                input('Precio muy bajo, Presione cualquier tecla para continuar')
                break
            elif valida == 2:
                input('Precio debe ser numerico, Presione cualquier tecla para continuar')
                break
            else:
                precios.append(precio)

            dueno = input('Ingrese dueño del Vehiculo: \t')
            valida = met.validaDueno(dueno)
            if valida != 0:
                input('Debe ingresar un dueño, Presione cualquier tecla para continuar')
                break
            else:
                duenos.append(dueno)
            autos = [patentes,marcas,precios,duenos]
            op = input('Ingrese 1 si desea agregar otro vehiculo, sino presione cualquier tecla: ')
            if op!='1':
                break
    elif opcion == '2':
        met.limpiarPantalla()
        patente=input('Ingrese la patente que desea buscar: ')
        c=patentes.count(patente)
        if c!=0:
            n=len(patentes)
            print(f'Patente - Marca - Precio - Dueño')
            c=patentes.index(patente)
            for i in range(n):
                print(f'{autos[0][c]} \t {autos[1][c]} \t {autos[2][c]} \t {autos[3][c]}')
        else:
            input(f'La patente {patente} no es valida, Presione cualquier tecla para continuar')

    elif opcion == '3':
        patente=input('Ingrese la patente que desea buscar')
        c=patentes.count(patente)
        try:
            if c!=0:                
                c=patentes.index(patente)            
                print(f'Patente: {autos[0][c]} \t Dueño: {autos[3][c]} a pagar:')
                pago=ra.randint(1500,3500)
                print(f'El valor de la Multa es: {pago}')
                pago=ra.randint(1500,3500)
                print(f'El valor de la Emision de contaminantes es: {pago}')
                pago=ra.randint(1500,3500)
                print(f'El valor de la Anotaciones es: {pago}')
                input('Presione Cualquier tecla para salir')
            else:
                input(f'La patente {patente} no es valida, Presione cualquier tecla para continuar')
        except Exception as e:
            input('A ocurrido un error')
            break
    elif opcion == '4':
        print('Cerrando Sesion, Adios')
        break
    else:
        print('No ha seleccionado ninguna opcion')