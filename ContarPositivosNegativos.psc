Algoritmo ContarPositivosNegativos
Definir num Como Entero
Definir positivos, negativos, cantidad Como Entero
positivos <- 0
negativos <- 0

Escribir "�Cu�ntos n�meros desea ingresar?"
Leer cantidad

Para i <- 1 Hasta cantidad Con Paso 1 Hacer
	Escribir "Ingrese un n�mero: "
	Leer numero
	
	Si numero > 0 Entonces
		positivos <- positivos + 1
        SiNo num <= 0 Entonces
		negativos <- negativos + 1
	FinSi
FinPara

Escribir "N�meros positivos: ", positivos
Escribir "N�meros negativos: ", negativos
FinAlgoritmo