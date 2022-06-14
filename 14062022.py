import metodos as me

me.limpiarPantalla()

me.saludar()
#print('La suma es:',me.sumar())

try:
    a=int(input('ingrese un valor: '))
    b=int(input('ingrese un valor: '))
except Exception as e:
    print(e)
print(me.sumar3(a=a,b=b))