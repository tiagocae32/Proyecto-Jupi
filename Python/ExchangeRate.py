import requests
from bs4 import BeautifulSoup
from datetime import datetime
import csv

def obtener_dolar_blue():
    url = "https://dolarhoy.com/"
    response = requests.get(url)
    soup = BeautifulSoup(response.text, "html.parser")

    dolar_blue = soup.find("div", class_="tile is-child").find_all("div", class_="val")[1].text
    dolar_blue = float(dolar_blue.replace("$", "").replace(",", "."))

    return dolar_blue

def guardar_en_csv(dolar_blue, archivo="dolar_blue.csv"):
    with open(archivo, mode="a", newline="") as file:
        writer = csv.writer(file)
        
        file.seek(0, 2)  
        if file.tell() == 0:  
            writer.writerow(["Fecha", "Precio"])
        
        writer.writerow([datetime.now().strftime("%Y-%m-%d"), dolar_blue])
        print(f"✅ Datos guardados en {archivo}")

def main():
    dolar_blue = obtener_dolar_blue()
    print(f"✅ Dólar blue actualizado: {dolar_blue} ARS/USD")
    guardar_en_csv(dolar_blue)

if __name__ == "__main__":
    main()
