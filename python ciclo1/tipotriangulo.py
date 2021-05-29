# -*- coding: utf-8 -*-
"""
Created on Thu May 27 20:58:32 2021

@author: Andres
"""

l1 = int (input("Digite el lado 1 del triangulo:"))
l2 = int (input("Digite el lado 2 del triangulo:"))
l3 = int (input("Digite el lado 3 del triangulo:"))

if (l1 == l2 and l1 == l3 and l2 == l3):
    print("el triangulo es equilatero")
elif (l1 != l2 and l1 != l3 and l2 != l3):
    print("el triangulo es escaleno")
elif (l1 == l2 and l1 != l3 or l1 == l3 and l1 != l2 or l2 == l3 and l1 != l3):    
    print("el triangulo es isoceles")