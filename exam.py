import tkinter as tk
from tkinter import simpledialog, messagebox

patinadores = [
    {"boleta": "001", "nombre": "Alice", "apellido_paterno": "Smith", "apellido_materno": "Johnson", "fecha_nacimiento": "2000-01-01", "pais": "USA", "medallas": 5, "puntuacion": 9.5},
    {"boleta": "002", "nombre": "Bob", "apellido_paterno": "Brown", "apellido_materno": "Davis", "fecha_nacimiento": "1998-02-12", "pais": "Canada", "medallas": 3, "puntuacion": 8.0},
   {"boleta": "003", "nombre": "Charlie", "apellido_paterno": "Clark", "apellido_materno": "Lewis", "fecha_nacimiento": "1997-03-15", "pais": "UK", "medallas": 4, "puntuacion": 8.7},
    {"boleta": "004", "nombre": "Diana", "apellido_paterno": "Evans", "apellido_materno": "Martinez", "fecha_nacimiento": "2002-04-25", "pais": "Australia", "medallas": 6, "puntuacion": 9.2},
    {"boleta": "005", "nombre": "Eve", "apellido_paterno": "Garcia", "apellido_materno": "Rodriguez", "fecha_nacimiento": "2001-05-05", "pais": "Mexico", "medallas": 2, "puntuacion": 8.5},
    {"boleta": "006", "nombre": "Frank", "apellido_paterno": "Hernandez", "apellido_materno": "Lopez", "fecha_nacimiento": "1996-06-16", "pais": "Spain", "medallas": 1, "puntuacion": 7.8},
    {"boleta": "007", "nombre": "Grace", "apellido_paterno": "Jones", "apellido_materno": "Lee", "fecha_nacimiento": "1999-07-17", "pais": "South Korea", "medallas": 4, "puntuacion": 9.1},
    {"boleta": "008", "nombre": "Henry", "apellido_paterno": "Kim", "apellido_materno": "Park", "fecha_nacimiento": "1995-08-18", "pais": "South Korea", "medallas": 3, "puntuacion": 8.9},
    {"boleta": "009", "nombre": "Ivy", "apellido_paterno": "Lewis", "apellido_materno": "Young", "fecha_nacimiento": "2003-09-19", "pais": "USA", "medallas": 7, "puntuacion": 9.8},
    {"boleta": "010", "nombre": "Jack", "apellido_paterno": "Martin", "apellido_materno": "Green", "fecha_nacimiento": "1994-10-20", "pais": "France", "medallas": 2, "puntuacion": 8.4},
    {"boleta": "011", "nombre": "Karen", "apellido_paterno": "Nelson", "apellido_materno": "Hall", "fecha_nacimiento": "2000-11-21", "pais": "UK", "medallas": 5, "puntuacion": 9.3},
    {"boleta": "012", "nombre": "Leo", "apellido_paterno": "Ortiz", "apellido_materno": "Perez", "fecha_nacimiento": "2001-12-22", "pais": "Mexico", "medallas": 6, "puntuacion": 9.6},
    {"boleta": "013", "nombre": "Mia", "apellido_paterno": "Peterson", "apellido_materno": "Adams", "fecha_nacimiento": "1998-01-23", "pais": "Australia", "medallas": 1, "puntuacion": 8.0},
    {"boleta": "014", "nombre": "Noah", "apellido_paterno": "Quinn", "apellido_materno": "Bailey", "fecha_nacimiento": "1999-02-24", "pais": "Canada", "medallas": 3, "puntuacion": 8.2},
    {"boleta": "015", "nombre": "Olivia", "apellido_paterno": "Ramirez", "apellido_materno": "Cruz", "fecha_nacimiento": "2002-03-25", "pais": "Spain", "medallas": 2, "puntuacion": 8.6},
    {"boleta": "016", "nombre": "Paul", "apellido_paterno": "Sanchez", "apellido_materno": "Flores", "fecha_nacimiento": "1997-04-26", "pais": "USA", "medallas": 4, "puntuacion": 9.0},
    {"boleta": "017", "nombre": "Quinn", "apellido_paterno": "Thomas", "apellido_materno": "Harris", "fecha_nacimiento": "2003-05-27", "pais": "Canada", "medallas": 5, "puntuacion": 9.4},
    {"boleta": "018", "nombre": "Rachel", "apellido_paterno": "Upton", "apellido_materno": "Collins", "fecha_nacimiento": "1995-06-28", "pais": "France", "medallas": 1, "puntuacion": 7.9},
    {"boleta": "019", "nombre": "Sam", "apellido_paterno": "Vega", "apellido_materno": "Reed", "fecha_nacimiento": "1996-07-29", "pais": "Spain", "medallas": 3, "puntuacion": 8.8},
    {"boleta": "020", "nombre": "Tina", "apellido_paterno": "Walker", "apellido_materno": "Gomez", "fecha_nacimiento": "2001-08-30", "pais": "Australia", "medallas": 6, "puntuacion": 9.2},
    {"boleta": "021", "nombre": "Ulysses", "apellido_paterno": "Xu", "apellido_materno": "Wang", "fecha_nacimiento": "2000-09-30", "pais": "China", "medallas": 4, "puntuacion": 8.5},
    {"boleta": "022", "nombre": "Vera", "apellido_paterno": "Young", "apellido_materno": "King", "fecha_nacimiento": "2002-10-01", "pais": "UK", "medallas": 5, "puntuacion": 9.1},
    {"boleta": "023", "nombre": "Will", "apellido_paterno": "Zimmerman", "apellido_materno": "Scott", "fecha_nacimiento": "1999-11-02", "pais": "Germany", "medallas": 2, "puntuacion": 8.3},
    {"boleta": "024", "nombre": "Xander", "apellido_paterno": "Anderson", "apellido_materno": "Lee", "fecha_nacimiento": "2001-12-03", "pais": "South Korea", "medallas": 6, "puntuacion": 9.5},
    {"boleta": "025", "nombre": "Yara", "apellido_paterno": "Baker", "apellido_materno": "Morris", "fecha_nacimiento": "2003-01-04", "pais": "Canada", "medallas": 3, "puntuacion": 8.9},
    {"boleta": "026", "nombre": "Zane", "apellido_paterno": "Carter", "apellido_materno": "Garcia", "fecha_nacimiento": "1998-02-05", "pais": "USA", "medallas": 7, "puntuacion": 9.7},
    {"boleta": "027", "nombre": "Amy", "apellido_paterno": "Davis", "apellido_materno": "Johnson", "fecha_nacimiento": "2000-03-06", "pais": "Australia", "medallas": 5, "puntuacion": 9.0},
    {"boleta": "028", "nombre": "Ben", "apellido_paterno": "Edwards", "apellido_materno": "Harris", "fecha_nacimiento": "1997-04-07", "pais": "UK", "medallas": 4, "puntuacion": 8.6},
    {"boleta": "029", "nombre": "Cara", "apellido_paterno": "Franklin", "apellido_materno": "Lewis", "fecha_nacimiento": "1999-05-08", "pais": "France", "medallas": 2, "puntuacion": 8.2},
    {"boleta": "030", "nombre": "Tobio", "apellido_paterno": "Kageyama", "apellido_materno": "Kim", "fecha_nacimiento": "1998-05-02", "pais": "Japan", "medallas": 5, "puntuacion": 9.2},
]

def registrar_patinador():
    nuevo_patinador = {}
    nuevo_patinador['boleta'] = simpledialog.askstring("Entrada", "Ingrese la boleta:")
    nuevo_patinador['nombre'] = simpledialog.askstring("Entrada", "Ingrese el nombre:")
    nuevo_patinador['apellido_paterno'] = simpledialog.askstring("Entrada", "Ingrese el apellido paterno:")
    nuevo_patinador['apellido_materno'] = simpledialog.askstring("Entrada", "Ingrese el apellido materno:")
    nuevo_patinador['fecha_nacimiento'] = simpledialog.askstring("Entrada", "Ingrese la fecha de nacimiento (YYYY-MM-DD):")
    nuevo_patinador['pais'] = simpledialog.askstring("Entrada", "Ingrese el país:")
    nuevo_patinador['medallas'] = int(simpledialog.askstring("Entrada", "Ingrese el número de medallas:"))
    nuevo_patinador['puntuacion'] = float(simpledialog.askstring("Entrada", "Ingrese la puntuación:"))
    patinadores.append(nuevo_patinador)
    messagebox.showinfo("Información", "Patinador registrado exitosamente.")

def consultar_patinadores():
    lista = ""
    for patinador in patinadores:
        lista += f"Boleta: {patinador['boleta']}, Nombre: {patinador['nombre']} {patinador['apellido_paterno']} {patinador['apellido_materno']}, Fecha de Nacimiento: {patinador['fecha_nacimiento']}, País: {patinador['pais']}, Medallas: {patinador['medallas']}, Puntuación: {patinador['puntuacion']}\n"
    messagebox.showinfo("Lista de Patinadores", lista)

def editar_patinador():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del patinador que desea editar:")
    for patinador in patinadores:
        if patinador['boleta'] == boleta:
            patinador['nombre'] = simpledialog.askstring("Entrada", "Ingrese el nuevo nombre o presiona Enter para mantener el actual:", initialvalue=patinador['nombre'])
            patinador['apellido_paterno'] = simpledialog.askstring("Entrada", "Ingrese el nuevo apellido paterno o presiona Enter para mantener el actual:", initialvalue=patinador['apellido_paterno'])
            patinador['apellido_materno'] = simpledialog.askstring("Entrada", "Ingrese el nuevo apellido materno o presiona Enter para mantener el actual:", initialvalue=patinador['apellido_materno'])
            patinador['fecha_nacimiento'] = simpledialog.askstring("Entrada", "Ingrese la nueva fecha de nacimiento o presiona Enter para mantener el actual:", initialvalue=patinador['fecha_nacimiento'])
            patinador['pais'] = simpledialog.askstring("Entrada", "Ingrese el nuevo país o presiona Enter para mantener el actual:", initialvalue=patinador['pais'])
            patinador['medallas'] = simpledialog.askinteger("Entrada", "Ingrese el nuevo número de medallas o presiona Enter para mantener el actual:", initialvalue=patinador['medallas'])
            patinador['puntuacion'] = simpledialog.askfloat("Entrada", "Ingrese la nueva puntuación o presiona Enter para mantener el actual:", initialvalue=patinador['puntuacion'])
            messagebox.showinfo("Información", "Patinador editado exitosamente.")
            return
    messagebox.showinfo("Información", "No se encontró el patinador con esa boleta.")

def eliminar_patinador():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del patinador que desea eliminar:")
    for patinador in patinadores:
        if patinador['boleta'] == boleta:
            patinadores.remove(patinador)
            messagebox.showinfo("Información", "Patinador eliminado exitosamente.")
            return
    messagebox.showinfo("Información", "No se encontró el patinador con esa boleta.")

def mostrar_tabla():
    ventana_tabla = tk.Toplevel()
    ventana_tabla.title("Tabla de Patinadores")
    texto = tk.Text(ventana_tabla)
    texto.pack()
    for patinador in patinadores:
        texto.insert(tk.END, f"Boleta: {patinador['boleta']}, Nombre: {patinador['nombre']} {patinador['apellido_paterno']} {patinador['apellido_materno']}, Fecha de Nacimiento: {patinador['fecha_nacimiento']}, País: {patinador['pais']}, Medallas: {patinador['medallas']}, Puntuación: {patinador['puntuacion']}\n")

def main():
    root = tk.Tk()
    root.title("Gestión de Patinadores Artísticos")

    tk.Button(root, text="Registrar Patinador", command=registrar_patinador).pack(pady=5)
    tk.Button(root, text="Consultar Lista de Patinadores", command=consultar_patinadores).pack(pady=5)
    tk.Button(root, text="Editar Patinador", command=editar_patinador).pack(pady=5)
    tk.Button(root, text="Eliminar Patinador", command=eliminar_patinador).pack(pady=5)
    tk.Button(root, text="Mostrar Tabla de Datos", command=mostrar_tabla).pack(pady=5)
    tk.Button(root, text="Salir", command=root.quit).pack(pady=5)

    root.mainloop()

main()