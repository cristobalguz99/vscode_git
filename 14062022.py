import metodos as me

me.limpiarPantalla()


rut = input("Ingrese un rut sin digito verificador: ")

dv= me.validarDV(rut)

print(f'El digito verificador del rut {rut} es {dv}')