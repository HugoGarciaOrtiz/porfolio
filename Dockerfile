# Usamos una imagen de Python oficial
FROM python:3.10

# Establecemos el directorio de trabajo en el contenedor
WORKDIR /app

# Copiamos los archivos del proyecto al contenedor
COPY . /app

# Instalamos las dependencias si las hay (ejemplo con Flask)
RUN pip install flask

# Exponemos el puerto en el que corre la app
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
