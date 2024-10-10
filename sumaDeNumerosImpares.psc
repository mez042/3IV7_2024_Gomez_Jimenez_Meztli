Algoritmo sumaDeNumerosImpares
	
    Definir N Como Entero
    Definir suma Como Entero
	
    N = 1  
    suma = 0
	
    Escribir "Realiza la suma de N números impares"
    Leer k
	
    Para i = 1 Hasta k Con Paso 1 Hacer
        Escribir N, " es impar"
        suma = suma + N
        Escribir "Suma hasta ahora: ", suma
        N = N + 2  
    Fin Para
	
    Escribir "La suma es: ", suma
	
FinAlgoritmo

