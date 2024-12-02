FROM nginx:latest

# Copiar los archivos estáticos primero para aprovechar la caché de Docker
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY 404.html /usr/share/nginx/html/

# Copiar el archivo de configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80

# Agregar un healthcheck para verificar que el servicio esté en funcionamiento
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
