Algoritmo conversionBinaria
	
	Definir num,cociente Como Entero
	Definir binario como texto
	
	//el binario lo tengo que concatenar
	binario = " "
	
	Escribir "Ingresa el numero que deseas convertir"
	Leer num
	
	si num >= 0 Entonces
		Mientras num > 0 Hacer
			residuo = num%2
			//tengo que ir armando el binario
			nuevobinario<-ConvertirATexto(residuo)
			
			//concatenar los elementos de texto
			binario = nuevobinario+binario
			
			num = Trunc(num/2)
		FinMientras
		
		//Si binario es 0
		si binario=" " Entonces
			binario ="0"
			
		FinSi
		Escribir "el numero binario es: " , binario
	FinSi
	
FinAlgoritmo
