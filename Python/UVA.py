import requests
import csv
from datetime import datetime

URL_API = 'https://criptoya.com/api/uva'
ARCHIVO_CSV = 'valor_uva.csv'

def obtener_valor_uva():
    try:
        response = requests.get(URL_API)
        response.raise_for_status()
        data = response.json()
        return data['value']
    except requests.exceptions.RequestException as e:
        print(f"Error al obtener el valor de la UVA: {e}")
        return None

def guardar_valor_uva():
    valor_uva = obtener_valor_uva()
    if valor_uva is None:
        return

    fecha_actual = datetime.now().strftime('%Y-%m-%d')

    try:
        with open(ARCHIVO_CSV, mode='a', newline='', encoding='utf-8') as file:
            writer = csv.writer(file)

            if file.tell() == 0:
                writer.writerow(['fecha', 'precio'])

            writer.writerow([fecha_actual, valor_uva])

        print(f"Registro guardado: {fecha_actual}, {valor_uva} ARS")
    except Exception as e:
        print(f"Error al guardar el archivo CSV: {e}")

guardar_valor_uva()
