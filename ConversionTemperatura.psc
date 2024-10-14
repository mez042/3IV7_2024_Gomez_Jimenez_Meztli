Algoritmo ConversionTemperatura
    Definir fahrenheit, celsius, kelvin, rankine Como Real
    Definir opcion Como Entero
	
    Escribir "Ingrese la temperatura en Fahrenheit: "
    Leer fahrenheit
	
    celsius <- (fahrenheit - 32) * 5 / 9
    kelvin <- celsius + 273.15
    rankine <- fahrenheit + 459.67
	
    Escribir "Seleccione la conversión: 1. Celsius, 2. Kelvin, 3. Rankine"
    Leer opcion
	
    Segun opcion Hacer
        Caso 1:
            Escribir fahrenheit, "°F son ", celsius, "°C."
        Caso 2:
            Escribir fahrenheit, "°F son ", kelvin, "K."
        Caso 3:
            Escribir fahrenheit, "°F son ", rankine, "°R."
        De Otro Modo:
            Escribir "Opción no válida."
    FinSegun
FinAlgoritmo
