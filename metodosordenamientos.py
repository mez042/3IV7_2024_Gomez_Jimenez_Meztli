
import tkinter as tk
from tkinter import messagebox
import time

def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i-1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

def selection_sort(arr):
    for i in range(len(arr)):
        min_idx = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

def perform_sorting():
    try:
        numbers = list(map(int, entry.get().split()))
        
        if len(numbers) > 40:
            messagebox.showerror("Error", "La lista no debe contener más de 40 números.")
            return
        
        selected_method = sorting_method.get()
        
        original_list = numbers.copy()
        
        start_time = time.time()
        
        if selected_method == "Bubble Sort":
            sorted_list = bubble_sort(numbers)
        elif selected_method == "Insertion Sort":
            sorted_list = insertion_sort(numbers)
        elif selected_method == "Selection Sort":
            sorted_list = selection_sort(numbers)
        
        end_time = time.time()
        
        time_taken = end_time - start_time
        
        result_text.set(f"Lista original: {original_list}\nLista ordenada: {sorted_list}\nTiempo de ordenamiento: {time_taken:.6f} segundos")
    
    except ValueError:
        messagebox.showerror("Error", "Por favor ingrese una lista válida de números separados por espacios.")

root = tk.Tk()
root.title("Programa de Ordenamiento")

tk.Label(root, text="Ingrese una lista de números (máximo 40 números):").pack(pady=10)
entry = tk.Entry(root, width=50)
entry.pack(pady=5)

tk.Label(root, text="Seleccione un método de ordenamiento:").pack(pady=10)
sorting_method = tk.StringVar(value="Bubble Sort")
tk.Radiobutton(root, text="Bubble Sort", variable=sorting_method, value="Bubble Sort").pack()
tk.Radiobutton(root, text="Insertion Sort", variable=sorting_method, value="Insertion Sort").pack()
tk.Radiobutton(root, text="Selection Sort", variable=sorting_method, value="Selection Sort").pack()

tk.Button(root, text="Ordenar", command=perform_sorting).pack(pady=20)

result_text = tk.StringVar()
tk.Label(root, textvariable=result_text).pack(pady=10)

root.mainloop()