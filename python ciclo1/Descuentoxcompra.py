# -*- coding: utf-8 -*-
"""
Created on Thu May 27 21:22:58 2021

@author: Andres
"""

vr_compra = float (input("Digite el valor de la compra:"))
vr_descuento = float


if (vr_compra < 500000 ):
    vr_descuento = 0
elif (vr_compra >= 500000 and vr_compra <= 1000000):
    vr_descuento = 5
elif (vr_compra > 1000000 and vr_compra <= 7000000):
   vr_descuento = 11
elif (vr_compra > 7000000 and vr_compra <= 15000000):
    vr_descuento = 18
elif (vr_compra > 15000000):
    vr_descuento = 25
print ("el valor a pagar es $", vr_compra - (vr_compra * vr_descuento / 100))
if (vr_descuento == 0):
    print ("El descuento es $", vr_compra * vr_descuento / 100)     
else:
    print ("El descuento es $", vr_compra * vr_descuento / 100)   