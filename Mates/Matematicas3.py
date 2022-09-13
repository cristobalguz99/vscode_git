from lib2to3.pgen2.token import DOT
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

#multiplyMatriz2()

