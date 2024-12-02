# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar todos los archivos desde el directorio public a la ruta correspondiente en Nginx
COPY public/ /usr/share/nginx/html/

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80

# Agregar un healthcheck para verificar que el servicio Nginx está funcionando
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
