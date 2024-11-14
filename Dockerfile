# Gebruik een lichte versie van Python
FROM python:3.9-slim

# Stel de werkdirectory in
WORKDIR /app

# Kopieer de afhankelijkheden
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Kopieer de rest van de applicatiebestanden
COPY . /app/

# Stel de poort in waarop de app draait (standaard voor Cloud Run is 8080)
EXPOSE 8080

# Start de applicatie (zorg ervoor dat dit het juiste bestand is, bijv. app.py)
CMD ["python", "app.py"]
