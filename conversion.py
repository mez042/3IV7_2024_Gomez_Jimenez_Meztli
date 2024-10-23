def binario_a_decimal(binario):
    return int(binario, 2)

def decimal_a_binario(decimal):
    return bin(decimal).replace("0b", "")

# Ejemplo de uso
binario = "1011"
decimal = 11

print(f"El binario {binario} en decimal es: {binario_a_decimal(binario)}")
print(f"El decimal {decimal} en binario es: {decimal_a_binario(decimal)}")
