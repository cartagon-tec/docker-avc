# Usamos una imagen base de Python 3.8
FROM python:3.8-slim-buster

# Creamos un directorio para la aplicación
WORKDIR /app

# Copiamos los archivos de requisitos para la aplicación
COPY requirements.txt .

# Instalamos las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código de la aplicación
COPY app.py .

# Exponemos el puerto 5000
EXPOSE 5000

# Ejecutamos la aplicación
CMD [ "python", "./app.py" ]
