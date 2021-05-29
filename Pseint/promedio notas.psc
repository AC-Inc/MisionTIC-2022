Proceso calificacion
	Definir nota1, nota2, nota3, promedio Como Real
	Escribir "PROGRAMA DE PROMEDIOS"
	Escribir "Digite las 3 notas del estudiante una a una"
	Leer nota1, nota2, nota3
	Si nota1 >= 0 y nota1 <= 5 Entonces
		Si nota2 >= 0 y nota1 <= 5 Entonces
			Si nota3 >= 0 y nota1 <= 5 Entonces
				promedio  = (nota1 + nota2 + nota3)/3
			SiNo
				Escribir "La nota 3 fue mal digitada"
			FinSi
		SiNo
			Escribir "La nota 2 fue mal digitada"
		FinSi
	SiNo
		Escribir "La nota 1 fue mal digitada"
	Fin Si
	
	Si promedio >= 3 y promedio <= 5 Entonces
		Escribir "El estudiante aprobó el curso con nota de " promedio
	SiNo
		Si promedio >= 0 Entonces
			Escribir "El estudiante reprobó el curso con nota de " promedio
		Fin Si	
	Fin Si
FinProceso
