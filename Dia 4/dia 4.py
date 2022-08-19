valores = [1, 2, 3, 4, 5, 6, 9.5]
valores_pares=[n for n in valores if n%2==0] 
print(valores_pares)


temperatura_fahrenheit = [32, 212, 275]
grados_fahrenheit=[(n-32)*(5/9) for n in temperatura_fahrenheit]
print(grados_fahrenheit)