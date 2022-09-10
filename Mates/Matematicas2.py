import numpy as np
import os

os.system('cls')
def matrices():
    S=[]
    A=[[2.6,4.8,1.8,0.9],[3.2,4.4,2.5,2.8],[2.4,3.6,3.8,2.5]]
    B=[[3.6,2.5,3.0,2.5],[4.5,5.0,3.5,3.8],[2.9,3.0,4.6,4.0]]
    for i in range(len(A)):
        S.append([])
        for j in range(len(A[0])):
            S[i].append(round((A[i][j]+B[i][j]),2))
            print(S)

def matrices2():
    A = np.array([[71, 80, 75,90],[65, 58, 74, 82]])
    D = np.array([[75, 83, 80, 94],[67, 60, 78,85]])
    V=D-A
    print(f'V={V}')

def matrices3():
    A = np.array([[120,70],[150,110],[80,160]])
    E= 0.8*A
    T=A+E
    print(T)

def matrices4():
    V = np.array([[30,34,20],[45,20,16],[14,26,25]])
    T = np.array([[35,30,26],[52,25,18],[23,24,32]])
    A=V+T
    print(f'Matriz A \n {A}')
    print(f'ambas plantas produjieron {A[2-1][1-1]}mil pares de zapatos blancos para niños')
    print('')
    B = (V*1.3)+(T*0.9)    
    print(f'Matriz B \n {B}')
    print(f'Se estima que el proximo año ambas plantas produciran {round(B[1-1][3-1],1)}mil zapatos negros para caballeros')

def matrices5():
    V = np.zeros((8,9))
    for i in range(len(V)):
        for j in range(len(V[0])):
            V[i][j]=8*(i+1)+12*(j+1)

    N=np.fromfunction(lambda i, j: 8*(i+1)+12*(j+1), (8, 9), dtype=int)
    print(N)

def matrices6():
    A = np.zeros((5,7))
    B = np.zeros((7,5))
    for i in range(len(A)):
        for j in range(len(A[0])):
            A[i][j]=(i+1)*(j+1)
    for i in range(len(B)):
        for j in range(len(B[0])):
            B[i][j]=15*(i+1)-2*(j+1)
    print(A)
    print(B)

    C=()

matrices6()
