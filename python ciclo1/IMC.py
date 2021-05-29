# -*- coding: utf-8 -*-
"""
Created on Fri May 28 19:59:22 2021

@author: Andres
"""


estatura = float (input("Digite la estatura de la persona:"))
peso = float (input("Digite el peso de la persona:"))

imc = peso / (estatura**2)
print (imc)
imc = round(imc, 2)
print (imc)
if (imc < 18.5 ):
    print ("Su IMC ES BAJO PESO")
elif (imc >= 18.5 and imc <= 24.9):
    print ("Su IMC ES NORMAL")
elif (imc >= 25 and imc <= 29.9):
   print ("Su IMC ES SOBREPESO")
elif (imc > 30 ):
    print ("Su IMC ES OBESO")
