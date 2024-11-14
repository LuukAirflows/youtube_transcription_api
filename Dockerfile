# Stap 1: Gebruik een officiële Python runtime als basisimage
FROM python:3.9-slim

# Stap 2: Stel de werkdirectory in voor de app
WORKDIR /app

# Stap 3: Kopieer de afhankelijkheden naar de container en installeer ze
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Stap 4: Kopieer de rest van de applicatiecode naar de container
COPY . /app/

# Stap 5: Stel de poort in waarop de app draait
EXPOSE 8080

# Stap 6: Start de applicatie (verander dit afhankelijk van hoe je app start)
CMD ["python", "app.py"]
