import os



while True:
    os.system('cls')

    x=input('Ingrese un codigo: ')

    for i in x:
        if i.isnumeric():
            print(f'{i} Es numero')
        elif i.isalpha():
            print(f'{i} Es letra')
    break 