# Utiliza una imagen base de Python más limpia y segura
FROM python:3.8.6-slim

# Actualiza el sistema y limpia en un solo RUN para reducir la huella de la imagen
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libpq-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Actualiza pip en un layer dedicado para aprovechar el caching de Docker
RUN pip install --upgrade pip

# Establece el directorio de trabajo
WORKDIR /app

# Instala las dependencias
# Copia solo el archivo necesario primero para aprovechar el cache de Docker
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Instala Gunicorn aparte
RUN pip install gunicorn

# Copia el resto del código fuente del proyecto
COPY . /app/

# Hace el script de inicio ejecutable (podría no ser necesario si ya tiene permisos)
RUN chmod +x init_superuser.sh

# Expone el puerto que Gunicorn usará
EXPOSE 8000

# Define el comando para iniciar el servicio
CMD ["./init_superuser.sh"]
