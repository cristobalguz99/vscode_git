import math
import os
from unittest import result
##logaritmo
##x=math.log(17.0859375)/math.log(1.5)
##print("rsultado: ",x)
##print("Resultado: ",2**x)

##razon geometrica

os.system('cls')

def Razon_Geometrica():
    n1=4
    valor1=116.64
    n2=6
    valor2=377.9136
    calculo=valor1-valor2
    r=pow((valor2/valor1),(1/(n2-n1)))
    print("Razon:",r)
    a1=valor1/r**(n1-1)
    print("A1:",a1)
    n=9
    An=a1*r**(n-1)
    print("Resultado Final:",An)


def Sumatorias1():
    lista=[]
    suma=0
    c=0
    numero=6
    for i in range(35,62):
        #n=i+1
        #an=3*i**2+7
        an=numero*i
        suma=suma+an
        lista.append(suma)
        print(f"total {6} x {i} es {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias2():
    lista=[]
    suma=0
    c=0
    numero=13
    for i in range(15,37):
        #n=i+1
        #an=3*i**2+7
        an=numero*i
        suma=suma+an
        lista.append(suma)
        print(f"total {numero} x {i} es {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias3():
    lista=[]
    suma=0
    c=0
    for i in range(1,4):
        #n=i+1
        an=-1.5*i**2+6*i
        suma=suma+an
        lista.append(suma)
        print(f"Nota {i}: {an}")
        c=c+1
    print(f"total: {suma/3}")

def Sumatorias4():
    lista=[]
    suma=0
    c=0
    for i in range(1,561):
        #n=i+1
        an=61+7*i
        suma=suma+an
        lista.append(suma)
        print(f"termino {i}: {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias5():
    lista=[]
    suma=0
    c=0
    for i in range(22,651):
        #n=i+1
        an=45+4*i
        suma=suma+an
        lista.append(suma)
        print(f"termino {i}: {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias6():
    lista=[]
    suma=0
    c=0
    for i in range(1,55):
        #n=i+1
        an=9300*0.82**i
        suma=suma+an
        lista.append(suma)
        print(f"termino {i}: {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias7():
    lista=[]
    suma=0
    c=0
    for i in range(41,191):
        #n=i+1
        an=7500*0.97**i
        suma=suma+an
        lista.append(suma)
        print(f"termino {i}: {an}")
        c=c+1
    print(f"total: {suma}")

def Sumatorias7():
    suma=0
    inicio=41
    fin=190
    total=fin-inicio+1
    for i in range(total):
        n=i+inicio
        an=50+(n+1)*16

def Sumatorias8():
    a1=500000
    d=2000
    n1=24
    n2=12
    suma1=n1/2*(2*a1+(n1-1)*d)
    suma2=n2/2*(2*a1+(n2-1)*d)
    total=suma1-suma2
    print(f"total: {total}")


def Sumatorias9():
    a1=900
    d=0.9
    n1=12
    suma1=n1/2*(2*a1+(n1-1)*d)
    print(f"total: {suma1}")

def cuadratica():
    a=16
    b=84
    c=-4860
    x1=(-b+(b**2-4*a*c)**(1/2))/(2*a)
    x2=(-b-(b**2-4*a*c)**(1/2))/(2*a)
    print(x1)
    print(x2)

def Razon(numero1, numero2):
    r=numero1/numero2
    return r


def sumatorias10():
    #obtener razon
    r=Razon(810,900)
    a1=900
    n=30
    total=a1*(r**n-1)/(r-1)
    print(f"Total {total}")

def sumatorias11():
    #obtener razon
    #r=Razon(810,900)
    r=1.02
    a1=180000
    n1=24
    n2=18
    result1=a1*(r**n1-1)/(r-1)
    result2=a1*(r**n2-1)/(r-1)
    total=result1-result2
    print(f"La resta entre {result1} y {result2} es {total}")
#Sumatorias1()
#Sumatorias2()
#Sumatorias3()              
#Sumatorias4()
#Sumatorias5()
#Sumatorias6()
#Sumatorias7()
#Sumatorias8()
#Sumatorias9()
#sumatorias10()
sumatorias11()
#cuadratica()
#Razon_Geometrica()