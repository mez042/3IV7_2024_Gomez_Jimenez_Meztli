Algoritmo ESCENARIO_3_HOTEL
	
	Definir habitaciones Como arreglo[100] De tipo estructura
	Definir numero Como entero
	Definir tipo Como cadena
	Definir precio Como real
	Definir reservada Como l�gico
Fin estructura

Definir reservas Como arreglo[100] De tipo estructura
Definir numeroReserva Como entero
Definir numeroHabitacion Como entero
Definir fechaEntrada Como cadena
Definir fechaSalida Como cadena
Definir cliente Como cadena
Fin estructura

Definir contadorReservas Como entero
Definir contadorHabitaciones Como entero
Definir porcentajeOcupacion Como real

Para i:=1 Hasta 100 Hacer
	habitaciones[i].numero := i
	habitaciones[i].tipo := "Simple"
	habitaciones[i].precio := 100
	habitaciones[i].reservada := Falso
Fin Para
contadorReservas := 0
contadorHabitaciones := 100

Repetir
	Escribir "Sistema de Gesti�n de Reservas de Hotel"
	Escribir "1. Registro de Reservas"
	Escribir "2. Cancelaci�n de Reservas"
	Escribir "3. Consulta de Disponibilidad"
	Escribir "4. Gesti�n de Ocupaci�n"
	Escribir "5. Salir"
	Leer opcion
	
	Seg�n opcion Hacer
Caso 1:
	Escribir "Ingrese n�mero de habitaci�n"
	Leer numeroHabitacion
	Escribir "Ingrese fecha de entrada"
	Leer fechaEntrada
	Escribir "Ingrese fecha de salida"
	Leer fechaSalida
	Escribir "Ingrese nombre de cliente"
	Leer cliente
	
	Si habitaciones[numeroHabitacion].reservada = Falso Entonces
		reservas[contadorReservas].numeroReserva := contadorReservas + 1
		reservas[contadorReservas].numeroHabitacion := numeroHabitacion
		reservas[contadorReservas].fechaEntrada := fechaEntrada
		reservas[contadorReservas].fechaSalida := fechaSalida
		reservas[contadorReservas].cliente := cliente
		habitaciones[numeroHabitacion].reservada := Verdadero
		contadorReservas := contadorReservas + 1
		contadorHabitaciones := contadorHabitaciones - 1
		Escribir "Reserva registrada con �xito"
	SiNo
		Escribir "Habitaci�n no disponible"
	Fin Si
	
Caso 2:
	Escribir "Ingrese n�mero de reserva"
	Leer numeroReserva
	
	Para i:=0 Hasta contadorReservas - 1 Hacer
		Si reservas[i].numeroReserva = numeroReserva Entonces
			habitaciones[reservas[i].numeroHabitacion].reservada := Falso
			contadorHabitaciones := contadorHabitaciones + 1
			Escribir "Reserva cancelada con �xito"
			Salir Para
            Fin Si
        Fin Para
        Escribir "Reserva no encontrada"
		
    Caso 3:
        Escribir "Ingrese fecha de entrada"
        Leer fechaEntrada
        Escribir "Ingrese fecha de salida"
        Leer fechaSalida
		
        Para i:=1 Hasta 100 Hacer
            Si habitaciones[i].reservada = Falso Entonces
                Escribir "Habitaci�n ", i, " disponible"
            Fin Si
        Fin Para
		
    Caso 4:
        porcentajeOcupacion := (100 - contadorHabitaciones) / 100 * 100
        Escribir "Porcentaje de ocupaci�n: ", porcentajeOcupacion, "%"
		
    Caso 5:
        Salir Repetir
			
		Caso Otro:
			Escribir "Opci�n inv�lida"
	Fin Seg�n

Fin Repetir

FinAlgoritmo
