//vamos a crear un programa para calcular areas y perimetros de 6 Figuras mini. 4 lados y maximo 12 lados en este mismo codigo
//pero con el uso de subprocesos
//subprocesos son operaciones internas para una aplicacion y los argumentos son datos de cualquier tipo que se van a ocupar(), operar con ese dato

//vamos a creara el subproceso del rectangulo
SubProceso Rectangulo(base, altura)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = 2 * (base + altura)
	Escribir "El area del rectangulo es: ", area
	Escribir "El perimetro del rectangulo es: ", perimetro
FinSubProceso


SubProceso Triangulo(base, altura, lado1, lado2, lado3)
	Definir area, perimetro Como Real
	area = (base + altura)/2
	perimetro = lado1 + lado2 + lado3
	Escribir "El area del triangulo es: ", area
	Escribir "El perimetro del triangulo es: ", perimetro
FinSubProceso


SubProceso Cuadrado(base, altura, lado1, lado2, lado3, lado4)
	Definir area, perimetro Como Real
	area = base * altura
	perimetro = lado1 + lado2 + lado3 + lado4
	Escribir "El area del cuadrado es: ", area
	Escribir "El perimetro del cuadrado es: ", perimetro
FinSubProceso


SubProceso Trapecio(baseMayor, baseMenor, altura, lado1, lado2)
	Definir area, perimetro Como Real
    area = ((baseMayor + baseMenor) * altura) / 2
	perimetro = baseMayor + baseMenor + lado1 + lado2
	Escribir "El area del trapecio es: ", area
	Escribir "El perimetro del trapecio: ", perimetro
FinSubProceso


SubProceso Pentagono(apotema, lado1)
	Definir area, perimetro Como Real
    area = (5 * lado1 * apotema) / 2
	perimetro =  5 * lado1
	Escribir "El area del pentagono es: ", area
	Escribir "El perimetro del pentagono: ", perimetro
FinSubProceso


SubProceso Hexagono(apotema, lado1)
	Definir area, perimetro Como Real
	area = (6 * lado1 * apotema) / 2
	perimetro =  lado1 * 6
	Escribir "El area del hexagono es: ", area
	Escribir "El perimetro del hexagono es: ", perimetro
FinSubProceso



Algoritmo CalculadoradeFiguras
	Definir opcion Como Caracter
	Definir base, altura, lado1, lado2, lado3, lado4 Como Real
	//vamos a crear el menu
	Escribir "Selecciona una opcion: "
	Escribir "A Area y Perimetro del Rectangulo"
	Escribir "B Area y Perimetro del Triangulo"
	Escribir "C Area y Perimetro del Cuadrado"
	Escribir "D Area y Perimetro del Trapecio"
	Escribir "E Area y Perimetro del Pentagono"
	Escribir "F Area y Perimetro del Hexagono"
	
	Leer opcion
	Segun opcion Hacer
		Caso "A":
		    Escribir "Ingresa la base del rectangulo"
			Leer base
			Escribir "Ingresa la altura del rectangulo"
			Leer altura
			Rectangulo(base, altura)
		Caso "B":
		    Escribir "Ingresa la base del Triangulo"
			Leer base
			Escribir "Ingresa la altura del Triangulo"
			Leer altura
			Escribir "Ingresa lado1"
			Leer lado1
			Escribir "Ingresa lado2"
			Leer lado2
			Escribir "Ingresa lado3" 
			Leer lado3
			Triangulo(base, altura, lado1, lado2, lado3)
		Caso "C" :
			Escribir "Ingresa la base del Cuadradoo"
			Leer base
			Escribir "Ingresa la altura del Cuadrado"
			Leer altura
			Escribir "Ingresa lado1"
			Leer lado1
			Escribir "Ingresa lado2"
			Leer lado2
			Escribir "Ingresa lado3" 
			Leer lado3
			Escribir "Ingresa lado4"
			Leer lado4
			Cuadrado(base, altura, lado1, lado2, lado3, lado4)
		Caso "D" :
			Escribir "Ingrese la base mayor del trapecio:"
            Leer baseMayor
            Escribir "Ingrese la base menor del trapecio:"
            Leer baseMenor
            Escribir "Ingrese la altura del trapecio:"
            Leer altura
            Escribir "Ingrese el lado1 del trapecio:"
            Leer lado1
            Escribir "Ingrese el lado2 del trapecio:"
            Leer lado2
            Trapecio(baseMayor, baseMenor, altura, lado1, lado2)
		Caso "E":
			Escribir "Ingresa el lado del Pentagonoo"
			Leer lado1
			Escribir "Ingresa el apotema del Pentagono"
			Leer apotema
            Pentagono(apotema, lado1)
		Caso "F" :
			Escribir "Ingresa el lado del Hexagono"
			Leer lado1
			Escribir "Ingresa la apotema del Hexagono"
			Leer apotema
			Hexagono(apotema, lado1)
		
		De Otro Modo:
			Escribir "Opcion no valida"
		
	Fin Segun
FinAlgoritmo
