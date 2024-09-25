Algoritmo tiendita
	
	Definir producto como texto
	Definir codigoproducto, cantidad Como Entero
	Definir precio Como Real
	
	//tengo q crear un menu de seleccion
	Mientras opcion <> 5 Hacer
		Escribir "1 - Ingresar un nuevo producto"
		Escribir "2 - Actualiza un producto"
		Escribir "3 - Consulta el producto"
		Escribir "4 - Generar reporte"
		Escribir "5 - Salir"
		
		Leer opcion
		Segun opcion Hacer
			caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "1 - Ingresa el codigo del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa el precio"
				Leer precio
			caso 2:
				Escribir "Ingresa el codigo del producto" 
				Leer codigoproducto
				Escribir"Ingresa la nueva cantidad"
				Leer cantidad
			caso 3:
				Escribir "Consultar invernadero"
				Escribir "nombre del producto" , producto
				Escribir "codigo del producto" , codigoproductoproducto
				Escribir "precio del producto" , precio
				Escribir "cantidad del producto" , cantidad
		    Caso 4:
				Escribir "Habia una vez un patito que decia miau miau"
				
		Fin Segun
	Fin Mientras
	
FinAlgoritmo
