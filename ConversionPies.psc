Algoritmo ConversionPies
    Definir pies, pulgadas, yardas, cm, metros Como Real
    Definir opcion Como Entero
	
    Escribir "Ingrese la longitud en pies: "
    Leer pies
	
    pulgadas <- pies * 12
    yardas <- pies / 3
    cm <- pulgadas * 2.54
    metros <- cm / 100
	
    Escribir "Seleccione la conversi�n: 1. Pulgadas, 2. Yardas, 3. Cent�metros, 4. Metros"
    Leer opcion
	
    Segun opcion Hacer
        Caso 1:
            Escribir pies, " pies son ", pulgadas, " pulgadas "
        Caso 2:
            Escribir pies, " pies son ", yardas, " yardas."
        Caso 3:
            Escribir pies, " pies son ", cm, " cent�metros."
        Caso 4:
            Escribir pies, " pies son ", metros, " metros."
        De Otro Modo:
            Escribir "Opci�n no v�lida."
    FinSegun
FinAlgoritmo
