Proceso comercializacion
	Definir vr_producto1,cant_producto1,vr_producto2,cant_producto2,vr_producto3,cant_producto3 Como Real
	Definir descuento,vr_compra,vr_flete Como Real
	Definir afirmacion Como Entero
	Definir nombre_cliente,identificacion,direccion,telefono,ciudad,pais Como Caracter
	Definir ref_producto1,nombre_producto1,ref_producto2,nombre_producto2,ref_producto3,nombre_producto3 Como Caracter
	Definir tipo_envio,forma_envio,nombre_transportdora Como Entero
	Definir verificacion1,verificacion2,verificacion3 Como Logico // Estas variables me ayudan a saber si los productos pedidos son de la misma referencia//
	afirmacion <- 0
	ref_producto1 <- ''
	ref_producto2 <- ''
	ref_producto3 <- ''
	cant_producto1 <- 0
	cant_producto2 <- 0
	cant_producto3 <- 0
	// Iniciamos solicitando los datos del cliente
	Escribir '            BIENVENIDOS A LA COMERCIALIZADORA       '
	Escribir 'Vamos a iniciar su proceso de compra'
	Escribir 'Digite los siguientes datos del cliente'
	Escribir 'Nombre: '
	Leer nombre_cliente
	Escribir 'Identificacion: '
	Leer identificacion
	Escribir 'Telefono: '
	Leer telefono
	Escribir 'Direccion: '
	Leer direccion
	Escribir 'Ciudad'
	Leer ciudad
	Escribir 'Pais:'
	Leer pais
	Escribir 'Gracias por la información suministrada'
	Escribir ''
	Escribir '      VAMOS A INICIAR EL PROCESO DE COMPRA       '
	Escribir 'Digite la referencia del producto a comprar'
	Leer ref_producto1
	Escribir 'Digite el nombre del producto a comprar'
	Leer nombre_producto1
	Escribir 'Digite el valor del producto a comprar'
	Leer vr_producto1
	Escribir 'Cuantas unidades desea del producto a comprar'
	Leer cant_producto1
	Escribir 'Si desea comprar mas productos digite 1, de lo contrario presione enter para totalizar su orden'
	Leer afirmacion
	Si afirmacion==1 Entonces
		Escribir 'Digite la referencia del producto a comprar'
		Leer ref_producto2
		Escribir 'Digite el nombre del producto a comprar'
		Leer nombre_producto2
		Escribir 'Digite el valor del producto a comprar'
		Leer vr_producto2
		Escribir 'Cuantas unidades desea del producto a comprar'
		Leer cant_producto2
		Escribir 'Si desea comprar mas productos digite 1, de lo contrario presione enter para totalizar su orden'
		afirmacion <- 0
		Leer afirmacion
		Si afirmacion==1 Entonces
			Escribir 'Digite la referencia del producto a comprar'
			Leer ref_producto3
			Escribir 'Digite el nombre del producto a comprar'
			Leer nombre_producto3
			Escribir 'Digite el valor del producto a comprar'
			Leer vr_producto3
			Escribir 'Cuantas unidades desea del producto a comprar'
			Leer cant_producto3
		FinSi
	FinSi
	// PROCEDEMOS A VERIFICAR LA ORDEN Y SI HAY PRODUCTOS DUPLICADOS//
	Si ref_producto1==ref_producto2 Entonces
		cant_producto1 <- cant_producto1+cant_producto2
		cant_producto2 <- 0
		vr_producto2 <- 0
		ref_producto2 <- ''
		nombre_producto2 <- ''
	FinSi
	Si ref_producto1==ref_producto3 Entonces
		verificacion2 <- Verdadero
		cant_producto1 <- cant_producto1+cant_producto3
		cant_producto3 <- 0
		vr_producto3 <- 0
		ref_producto3 <- ''
		nombre_producto3 <- ''
	FinSi
	Si ref_producto2==ref_producto3 Entonces
		verificacion3 <- Verdadero
		cant_producto2 <- cant_producto2+cant_producto3
		cant_producto3 <- 0
		vr_producto3 <- 0
		ref_producto3 <- ''
		nombre_producto3 <- ''
	FinSi
	Escribir ''
	Escribir ''
	Escribir '         DETALLES DEL ENVÍO'
	Escribir ''
	Escribir 'Escriba 1 para envío LOCAL o 2 para envío NACIONAL 3 para envío INTERNACIONAL'
	Leer tipo_envio
	Escribir ''
	Escribir 'El envío RÁPIDO garantiza el tiempo de entrega entre 1 y 2 días.'
	Escribir 'El envío NORMAL NO garantiza el tiempo de entrega'
	Escribir 'Escriba 1 para envío RÁPIDO o 2 para envío NORMAL'
	Leer forma_envio
	Escribir ''
	Escribir ''
	Escribir 'RESUMEN DE LA COMPRA REALIZADA'
	Escribir 'NOMBRE CLIENTE: ',nombre_cliente,' IDENTIFICACIÓN: ',identificacion
	Escribir 'DIRECCIÓN: ',direccion,' TELEFONO: ',telefono
	Escribir 'CIUDAD: ',ciudad,' PAIS: ',pais
	// calculo de valor de la compra y costo del envío
	Si cant_producto1>0 Y vr_producto1>0 Entonces
		Si cant_producto1>3 Entonces
			Escribir ref_producto1,'   ',nombre_producto1,'   ',cant_producto1,'   ',vr_producto1
			Escribir 'En este producto tienes un 5% de descuento'
			vr_compra <- cant_producto1*vr_producto1
			descuento <- (cant_producto1*vr_producto1*5)/100
		SiNo
			Escribir ref_producto1,'   ',nombre_producto1,'   ',cant_producto1,'   ',vr_producto1
			vr_compra <- cant_producto1*vr_producto1
			descuento <- 0
		FinSi
	FinSi
	Si cant_producto2>0 Y vr_producto2>0 Entonces
		Si cant_producto2>3 Entonces
			Escribir ref_producto2,'   ',nombre_producto2,'   ',cant_producto2,'   ',vr_producto2
			Escribir 'En este producto tienes un 5% de descuento'
			vr_compra <- vr_compra+cant_producto2*vr_producto2
			descuento <- descuento+(cant_producto2*vr_producto2*5)/100
		SiNo
			Escribir ref_producto2,'   ',nombre_producto2,'   ',cant_producto2,'   ',vr_producto2
			vr_compra <- vr_compra+cant_producto2*vr_producto2
		FinSi
	FinSi
	Si cant_producto3>0 Y vr_producto3>0 Entonces
		Si cant_producto3>3 Entonces
			Escribir ref_producto3,'   ',nombre_producto3,'   ',cant_producto3,'   ',vr_producto3
			Escribir 'En este producto tienes un 5% de descuento'
			vr_compra <- vr_compra+cant_producto3*vr_producto3
			descuento <- descuento+(cant_producto3*vr_producto3*5)/100
		SiNo
			Escribir ref_producto3,'   ',nombre_producto3,'   ',cant_producto3,'   ',vr_producto3
			vr_compra <- vr_compra+cant_producto3*vr_producto3
		FinSi
	FinSi
	Si forma_envio==1 Entonces
		Si tipo_envio==1 Entonces
			vr_flete <- 8000
		SiNo
			Si tipo_envio==2 Entonces
				vr_flete <- 10000
			SiNo
				Si tipo_envio==3 Entonces
					vr_flete <- 40000
				FinSi
			FinSi
		FinSi
	SiNo
		Si forma_envio==2 Entonces
			Si tipo_envio==1 Entonces
				vr_flete <- 4000
			SiNo
				Si tipo_envio==2 Entonces
					vr_flete <- 5000
				SiNo
					Si tipo_envio==3 Entonces
						vr_flete <- 10000
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Si vr_compra>=800000 Y forma_envio=1 Y tipo_envio=1 Entonces
		vr_flete <- 0
	FinSi
	Si vr_compra>=1000000 Y forma_envio==2 Y tipo_envio==2 Entonces
		vr_flete <- 0
	FinSi
	Si vr_compra>=2000000 Y forma_envio==2 Y tipo_envio==3 Entonces
		vr_flete <- 0
	FinSi
	Si forma_envio>=1 Y forma_envio<=2 Entonces
		Si tipo_envio>=1 Y tipo_envio<=3 Entonces
			Escribir 'El valor de la compra es:     $',vr_compra
			Escribir 'El valor de su descuento es:  $',descuento
			Escribir 'El valor del envío es:        $',vr_flete
			Escribir 'El valor a pagar es:          $',vr_compra-descuento+vr_flete
		SiNo
			Escribir 'los datos de tipo de envío son incorrectos su compra ha sido ANULADA'
		FinSi
	SiNo
		Escribir 'los datos de forma de envío son incorrectos su compra ha sido ANULADA'
	FinSi
FinProceso
