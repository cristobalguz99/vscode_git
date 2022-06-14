n1 = input("Ingrese numero 1:")
n2 = input("Ingrese numero 2:")
n3 = input("Ingrese numero 3:")


if n1.isnumeric and n2.isnumeric and n3.isnumeric:
    n1=int(n1)
    n2=int(n2)
    n3=int(n3)
    if n1>n2 and n1>n3:
        print(f'El numero mayor es:{n1}')
    elif n2>n1 and n2>n3:
        print(f'El numero mayor es:{n2}')
    else:
        print(f'El numero mayor es:{n3}')