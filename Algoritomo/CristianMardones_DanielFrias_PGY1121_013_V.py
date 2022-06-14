import os
from datetime import datetime

os.system('cls')
e=''
patentes=[];marcas=[];modelos=[];anios=[];tipos=[];Autos=[];fechas=[];observaciones=[];Registros=[];Final=[]
while True:
    os.system('cls')
    print('------------------Menu Registro de Auto------------------')
    me=input('1) Registrar Automovil \n2) Registro Mantenimiento \n3) Consultar Automovil \n4) Salir  \nDigite el numero que necesita acceder: ')

    if me=='1':
        try:
            while True:
                os.system('cls')
                patente=input('Ingrese Patente: ')
                marca=input('Ingrese Marca: ')
                modelo=input('Ingrese Modelo: ')
                anio=input('Ingrese Año de fabricacion: ')
                tipo=input('Ingrese Tipo ej: b=bencinero, d=diesel, e=electrico, h=hibrido: ')

                c=patentes.count(patente)

                if c==0:
                    if patente[0:2].isalpha() and  patente[2:6].isnumeric() and len(patente)==6:
                        patentes.append(patente)
                    elif patente[0:4].isalpha() and  patente[4:6].isnumeric() and len(patente)==6:
                        patentes.append(patente)
                    else:
                        input('Patente ingresada no cumple con los requisitos. Presione cualquier tecla para continua')
                        break

                    if anio.isnumeric():
                        anio=int(anio)
                        if anio>=1900 and anio<=2021:
                            anios.append(anio)
                        else:
                            input('El año ingresado no cumple con el registro solicitado. Presione cualquier tecla para continua')
                            break
                    else:
                        input('El año ingresado debe ser numerico. Presione cualquier tecla para continua')
                        break
                    
                    if tipo.isalpha() and tipo!="":
                        tipo=tipo.upper()
                        if tipo=='B':
                            tipo='Bencinero' 
                        elif tipo=='D':
                            tipo='Diesel' 
                        elif tipo=='E':
                            tipo='Electrico'
                        elif tipo=='H':
                            tipo='Hibrido'
                        else:
                            input('El tipo ingresado no corresponde a ningun tipo ingresado. Presione cualquier tecla para continuar')
                            break
                        tipos.append(tipo)
                    else:
                        input('El tipo ingresado no coincide con los tipos solicitados b=bencinero, d=diesel, e=electrico, h=hibrido. Presione cualquier tecla para continuar')
                        break

                    if len(marca)>0 and len(modelo)>0:
                        marcas.append(marca)
                        modelos.append(modelo)
                    else:
                        input('Debe ingresar marca y modelo. Presione cualquier tecla para continuar')
                        break
                    Autos=[patentes,marcas,modelos,anios,tipos]
                    respuesta=input('Presione 1 si desea agregar un nuevo vehiculo: ')
                    if respuesta!='1':
                        break
                else:
                    input(f'La patente {patente} ya se encuentra registrada. Presione cualquier tecla para continua')
                    break
        except Exception as e:
            input(f'A occurrido una falla en el sistema favor volver a ingresar {e}.  Presione cualquier tecla para continua')
    if me=='2':
        os.system('cls')
        try:
            while True:
                print('===========================================')
                patente = input('Ingrese patente del auto que desea buscar \no Presione 1 si desea ver todos los vehiculos registrados\nOpcion: ')
                if patente=='1':
                    n=len(patentes)
                    print(f'Patente - Marca - Modelo - Año - Tipo')
                    for i in range(n):
                        print(f'{Autos[0][i]} - {Autos[1][i]} - {Autos[2][i]} - {Autos[3][i]} - {Autos[4][i]}')
                elif len(patente)>0:
                    c=patentes.count(patente)
                    if c!=0:
                        x=patentes.index(patente)

                        print(f'Patente Seleccionada: {patente}')
                        observacion=input('Ingrese observacion del vehiculo: ')
                        while True:
                            try:
                                fecha=input('Ingrese la fecha de la observacion en formato dd-mm-yyyy: ')
                                datetime.strptime(fecha, '%d-%m-%Y')
                                break
                            except Exception as e:
                                print('Fecha Invalida')
                        if observacion!="":
                            observaciones.append(observacion)
                            fechas.append(fecha)
                            Registros=[Autos[0][x],Autos[1][x],Autos[2][x],Autos[3][x],Autos[4][x],observaciones,fechas]

                            print('Registro guardado sin problema')
                            respuesta=input('Presione 1 si desea revisar otro vehiculo: ')
                            if respuesta!='1':
                                break
                        else:
                            print('debe ingresar una observacion')

                    else:
                        input(f'La patente ingresada {patente} no existe')
                        break
                else:
                    input('debe ingresar una patente')
                    break
        except Exception as e:
            input(f'A occurrido una falla en el sistema favor volver a ingresar {e}.  Presione cualquier tecla para continua')
    if me=='3':
        os.system('cls')
        try:
            while True:
                print('===========================================')
                patente = input('Ingrese patente del auto que desea buscar \no Presione 1 si desea ver todos los vehiculos registrados\nOpcion: ')
                if patente=='1':
                    n=len(patentes)
                    print(f'Patente - Marca - Modelo - Año - Tipo')
                    for i in range(n):
                        print(f'{Autos[0][i]} - {Autos[1][i]} - {Autos[2][i]} - {Autos[3][i]} - {Autos[4][i]}')
                elif len(patente)>0:
                    c=patentes.count(patente)
                    if c!=0:
                        ##x=Autos.index(patente)
                        print(Registros[0][1])
                        print(f'{Autos[0][x]} - {Autos[1][x]} - {Autos[2][x]} - {Autos[3][x]} - {Autos[4][x]} - {Registros[5][x]} - {Registros[6][x]}')                        
                        respuesta=input('Presione 1 si desea revisar otro vehiculo: ')
                        if respuesta!='1':
                            break
                    else:
                        input(f'La patente ingresada {patente} no existe')
                        break 
        except Exception as e:
            input(f'A occurrido una falla en el sistema favor volver a ingresar {e}.  Presione cualquier tecla para continua')
    if me=='4':
        print('Cerrando Sesion')
        break