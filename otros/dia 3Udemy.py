numero=input('Chupalo doblao:\t')

if numero.isnumeric():
    algo=int(numero)%2

    if algo==0:
        print('par')
    else:
        print('impar')
else:
    print('ingresa un numero pajaron culiao')