Algoritmo EcuacionSegundoGrado
Definir a, b, c, discriminante, real1, real2, imaginario Como Real

Escribir "Ingrese el valor de a: "
Leer a
Escribir "Ingrese el valor de b: "
Leer b
Escribir "Ingrese el valor de c: "
Leer c

discriminante <- (b^2) - (4*a*c)

Si discriminante >= 0 Entonces
	real1 <- (-b + Raiz(discriminante)) / (2*a)
	real2 <- (-b - Raiz(discriminante)) / (2*a)
	Escribir "Las soluciones son: ", real1, " y ", real2
SiNo
	real1 <- -b / (2*a)
	imaginario <- Raiz(Abs(discriminante)) / (2*a)
	Escribir "Las soluciones son complejas: ", real1, " + ", imaginario, "i y ", real1, " - ", imaginario, "i"
FinSi
FinAlgoritmo