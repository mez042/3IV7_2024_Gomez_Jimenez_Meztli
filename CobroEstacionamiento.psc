Algoritmo CobroEstacionamiento
	Definir horaentreda, minutoentrada, horasalida, minutosalida Como real
	Definir totalhoras, totalMinutos, minutostotalescuenta Como real
	Definir totalcobro Como real
	
	//entrada de datos
	Escribir "Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrada (formato de 0 - 59)"
	Leer minutoentrada
	
	Escribir "Ingrese la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "Ingrese los minutos de salida (formato de 0 - 59)"
	Leer minutosalida
	
	//proceso
	//calcularel tiempo total en minutos
	totalHoras = horasalida-horaentrada
	totalMinutos=minutosalida-minutoentrada
	
	//tengo que evaluar los casos
	
	
	//si los minutos de salida son menores a los de entrada
	//hay que ajustar la hora y los minutosalida
	Si totalMinutos<0 Entonces
		totalMinutos = totalMinutos + 60
		//totalMinutos=60
		totalHoras = totalHoras - 1
	Fin Si
	
	
	//convertir todo a minutos
	
	totalMinutos = (totalHoras * 60) + totalMinutos
	
	//vamos a calcular el cobro
	totalcobro = 0
	
	//calcular el cobro por la hora completa
	Si totalMinutos >= 60  Entonces
		totalcobro = totalcobro + (totalMinutos/60)*15
	Fin Si
	
	//calcular el cobro de cada fraccion
	minutosrestantes = totalMinutos%60
	Si minutosrestantes > 0 Entonces
		fracciones15min = minutosrestantes //aqui se obtienen los 15
		
	//cobrar cada fraccion
		totalcobro = totalcobro + fracciones15min + 6
	Fin Si
	
	
	//mostrar el resultado
	Escribir "El total a pagar es de: " , totalcobro , "pesos"
	
FinAlgoritmo
