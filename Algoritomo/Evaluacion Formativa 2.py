
import os

os.system('cls')

ruts=[];nombres=[];edads=[];notas=[];alumnos=[]
while True:
    os.system('cls')
    print('MENU DE PANITA')
    me=input('1) Agregar Alumno \n2) Consultar datos por run \n3) Listar todos los alumnos \n4) Eliminar alumno \n5) Modificar \n6) Salir  \nDigite el numero que necesita acceder: ')

    if me=='1':
        os.system('cls')
        while True:
            
            rut=input('Ingrese Rut: ')
            nombre=input('Ingrese Nombre: ')
            edad=input('Ingrese Edad: ')
            nota=input('Ingrese Nota: ')

            largorut=len(rut)
            largonombre=len(nombre)    
            valiLista=0
            
            edad=int(edad)
            nota=float(nota)
            if largorut==8 and largonombre>=3 and largonombre<=100 and edad>1 and edad<130 and nota>0 and nota<8:
                try:
                    c = ruts.count(rut)
                    if c==0:
                        ruts.append(rut)
                        nombres.append(nombre)
                        edads.append(edad)
                        notas.append(nota)
                        alumnos=[ruts, nombres, edads, notas]
                        print(f'Alumno {nombre} fue agregado con exito')
                    else:
                        print(f'Ya existe ingresado el rut {rut}')
                        
                except Exception as e:
                    print(f'A ocurrido un error {e}')
            else:
                print('Un Valor no corresponde con lo necesario')

            respuesta=input('Presione 1 se desea agregar otro alumno: ')
            if respuesta!='1':
                break
            else:
                os.system('cls')
    elif me=='2':
        while True:
            os.system('cls')
            rut=input('Ingrese Rut a buscar: ')

            try:
                c=ruts.count(rut)
                if c!=0:
                    x=ruts.index(rut)
                    for i in range(c):
                        print(f'{alumnos[0][x]} {alumnos[1][x]} {alumnos[2][x]} {alumnos[3][x]}')
                        x+=1
                else:
                    print(f'El rut {rut} no existe')
                respuesta=input('ingrese 1 si desea buscar otro alumno:')
                if respuesta!='1':
                    break
                else:
                    os.system('cls')
            except Exception as e:
                print(f'A ocurrido un error {e}')
    elif me=='3':
        os.system('cls')
        try:
            n=len(ruts)
            for i in range(n):
                print(f'{alumnos[0][i]} {alumnos[1][i]} {alumnos[2][i]} {alumnos[3][i]}')
            respuesta=input('Presione cualquier tecla para continuar')
        except Exception as e:
            print(f'A ocurrido un error {e}')
    elif me=='4':
        try:
            os.system('cls')
            rut=input('Ingrese rut del alumno que desea eliminar: ')
            c=ruts.count(rut)
            if c!=0:
                x=ruts.index(rut)

                n=len(alumnos)

                for j in range(n):
                    alumnos[j].pop(x)

                #ruts.pop(x)
                #nombres.pop(x)
                #edads.pop(x)
                #notas.pop(x)

                c=ruts.count(rut)
                if c!=0:
                    print(f'Se elimino el rut {rut}')
                    input('Presione cualquier tecla para continuar')
            else:
                print(f'No existe el rut {rut}')
        except Exception as e:
            print(f'A ocurrido un error {e}')
    elif me==5:
        try:
            os.system('cls')
            rut=input('Ingrese rut del alumno que desea modificar: ')
            c=ruts.count(rut)
            if c!=0:
                x=ruts.index(rut)
        except Exception as e:
            print(f'A ocurrido un error {e}')
    elif me==6:
        os.system('cls')
        print('ADIOS')
        break
    else:
        print('No existe el menu seleccionado')
        input('Presione cualquier tecla para continuar')