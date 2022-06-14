from operator import truediv
import os

palabra = input("Ingrese una palabra: ")
largo = len(palabra)

i=0

while True:
    for i in palabra:

        print(i)
        print(i[1])
        if i!=i[largo-1]:
            print("No es Palindrome")
        elif i==largo:
            print("Es Palindrome")
    break