# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar todos los archivos desde el directorio Public a la ruta correspondiente en Nginx
COPY Public/ /usr/share/nginx/html/

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80