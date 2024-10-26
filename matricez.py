def crear_matriz(tamaño):
    matriz = []
    for i in range(tamaño):
        fila = []
        for j in range(tamaño):
            valor = int(input(f"Ingrese el valor para la posición ({i+1},{j+1}): "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def imprimir_matriz(matriz):
    for fila in matriz:
        print(fila)

def transponer_matriz(matriz):
    transpuesta = []
    for i in range(len(matriz)):
        fila = []
        for j in range(len(matriz[i])):
            fila.append(matriz[j][i])
        transpuesta.append(fila)
    return transpuesta


tamaño = int(input("Ingrese el tamaño de la matriz (3 o 5): "))
while tamaño not in [3, 5]:
    tamaño = int(input("Tamaño no válido. Ingrese 3 o 5: "))


matriz = crear_matriz(tamaño)
print("Matriz original:")
imprimir_matriz(matriz)


matriz_transpuesta = transponer_matriz(matriz)
print("Matriz transpuesta:")
imprimir_matriz(matriz_transpuesta)
