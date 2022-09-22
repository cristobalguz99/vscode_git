from lib2to3.pgen2.token import DOT
from operator import matmul
from turtle import dot
import numpy as np
import os

os.system('cls')

def multiplyMatriz1():
    #palta,tomate,pan - Santiago,Viña del mar
    A = np.array([[650, 600, 980],[480, 450, 840]])
    #proveedor1,proveedor2,proveedor3 - palta,tomate,pan
    B = np.array([[1100, 900, 1050],[800, 830, 870],[750,735,650]])

    print(A)
    print(B)
    C=np.matmul(A,B)
    D=A@B
    print(C)
    print(f'el total de ingredientes por proveedor a cada sucursal es \nProve 1, Prove 2, Prove 3\n{D}')

def multiplyMatriz2():
    #Modelos - Material
    A=np.array([[1,2],[3,2]])
    #Meses - Modelos
    B=np.array([[290,312],[345,413]])

    C=np.matmul(A,B)
    print(f'Materiales:\nAcero - Aluminio\n{C} Meses','\n')
    print(f'C[2][1] Corresponde a :\nEn enero se utilizo {C[2-1][1-1]}Kg de aluminio para ambos modelos\n')

    print(f'C[1][1] Corresponde a :\nEn enero se utilizo {C[1-1][1-1]}Kg de acero para ambos modelos')

def multiplyMatriz3():
    A=np.array([[1300,900,800],[2100,1700,1500],[1500,1200,900]])
    B=np.array([[3600,900,1500]])

    print(A,"\n\n",B,"\n")

    C=np.matmul(B,A)
    print(C)

def multiplyMatriz4():
    M=np.array([[9,14],[4,5]])
    Q=np.array([[200,240,220],[175,210,215]])

    print(M,"\n",Q)

    G=np.matmul(M,Q)
    #H=np.matmul(Q,M)

    print(G)

    print(G[2-1][3-1])

def multiplyMatriz4():
    M=np.array([[9,14],[4,5]])
    Q=np.array([[200,240,220],[175,210,215]])

    print(M,"\n",Q)

    G=np.matmul(M,Q)
    #H=np.matmul(Q,M)

    print(G)

    print(G[2-1][3-1])

def multiplyMatriz5():
    T=np.fromfunction(lambda i, j: 100*(i+1)*(j+1), (4, 5), dtype=int)
    C=np.fromfunction(lambda i, j: 3*(i+1)+5*(j+1), (5, 6), dtype=int)  
    print(T,"\n",C)

    G=np.matmul(T,C)
    print(G)
    print(T[1-1][4-1])
    print(C[5-1][2-1])
    print(G[3-1][5-1])
multiplyMatriz5()

