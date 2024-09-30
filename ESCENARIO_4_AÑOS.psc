Algoritmo ESCENARIO_4_A�OS
	
		Definir n, m, i, j, anio, nac, falle, personasVivas, edadMin, edadMax Como Entero
		Definir listaNacimientos, listaFallecimientos, listaAnios Como Entero
		Definir censo Como Caracter
		
		// Leer la cantidad de personas en el censo
		Escribir "Ingrese la cantidad de personas en el censo: "
		Leer n
		
		// Inicializar listas
		Dimension listaNacimientos[n]
		Dimension listaFallecimientos[n]
		
		// Leer los datos de nacimiento y fallecimiento
		Para i <- 1 Hasta n Con Paso 1 Hacer
			Escribir "Ingrese el a�o de nacimiento de la persona ", i, ": "
			Leer nac
			listaNacimientos[i] <- nac
			
			Escribir "Ingrese el a�o de fallecimiento de la persona ", i, ": "
			Leer falle
			listaFallecimientos[i] <- falle
		FinPara
		
		// Leer la cantidad de a�os a consultar
		Escribir "Ingrese la cantidad de a�os a consultar: "
		Leer m
		
		// Inicializar lista de a�os a consultar
		Dimension listaAnios[m]
		
		// Leer los a�os a consultar
		Para i <- 1 Hasta m Con Paso 1 Hacer
			Escribir "Ingrese el a�o a consultar ", i, ": "
			Leer anio
			listaAnios[i] <- anio
		FinPara
		
		// Procesar cada a�o a consultar
		Para i <- 1 Hasta m Con Paso 1 Hacer
			anio <- listaAnios[i]
			personasVivas <- 0
			edadMin <- 9999
			edadMax <- -1
			
			Para j <- 1 Hasta n Con Paso 1 Hacer
				nac <- listaNacimientos[j]
				falle <- listaFallecimientos[j]
				
				Si nac <= anio Y falle >= anio Entonces
					personasVivas <- personasVivas + 1
					edad <- anio - nac
					
					Si edad < edadMin Entonces
						edadMin <- edad
					FinSi
					
					Si edad > edadMax Entonces
						edadMax <- edad
					FinSi
				FinSi
			FinPara
			
			Escribir "En el a�o ", anio, ":"
			Escribir "Personas vivas: ", personasVivas
			Si personasVivas > 0 Entonces
				Escribir "Edad de la persona m�s joven: ", edadMin
				Escribir "Edad de la persona m�s anciana: ", edadMax
			FinSi
		FinPara


FinAlgoritmo
