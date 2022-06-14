from operator import truediv
import os

os.system('cls')
num=list()
c=0
n=10
#for i in range(n):#rango de numero
while True:
    x=input('Ingrese Numero:')
    x
    if x.isnumeric():
        x=int(x)
        if x<150 and x>0:
            b=num.count(x)
            if b==0:
                num.append(x)
                c=c+1            
    if c==n:
        break
num.sort()
print(num)