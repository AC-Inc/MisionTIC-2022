Proceso Verpelicula
	Definir presupuesto, valor_comida, valor_entrada, saldo Como Entero
	Definir nombre_pelicula, tipo_compra Como Caracter
	presupuesto = 60000
	Escribir "ingrese el nombre de la pelicula"
	Leer nombre_pelicula
	Escribir "Digite la forma de compra web o casilla"
	Leer tipo_compra
	Escribir "Digite el valor de la entrada a cine"
	Leer valor_entrada
	Escribir "Digite el valor de la comida"
	Leer valor_comida
	saldo = presupuesto - (valor_entrada+valor_comida)
	Escribir "el nombre de la pelicula vista es " nombre_pelicula " la compra se hizo en " tipo_compra " la comida costo " valor_comida " y la entrada " valor_entrada " así que mi saldo es " saldo
FinProceso
