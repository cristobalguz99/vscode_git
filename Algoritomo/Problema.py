while True:
    c=0
    anio=input('Ingrese el año del vehiculo: ')
    patente=input('Ingrese la patente del vehiculo: ')

    
    if len(patente)==6 and anio.isnumeric():
        for i in patente:
            if i.isnumeric():
                c+=1
            elif i.isalpha():
                c-=1
        
        if c==2:
            print(f'La patente {patente} es vieja')
        elif c==-2:
            print(f'La patente {patente} es nueva')
        else:
            print('La patente no coincide con ninguno de los dos formatos')
    else:
        print('Ocurrio un problema en el ingreso de datos')
##len(patente)==6 and patente[0:2].isalpha() and patente[2:2+4].isnumeric()
##len(patente)==6 and patente[0:4].isalpha() and patente[4:2+4].isnumeric()