# Usar la imagen base de Nginx
FROM nginx:latest

# Copiar los archivos estáticos desde el directorio Public a la ruta correspondiente en Nginx
COPY Public/index.html /usr/share/nginx/html/
COPY Public/styles.css /usr/share/nginx/html/

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80

# Agregar un healthcheck para verificar que el servicio Nginx está funcionando
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD nginx -t && nginx -s reload || exit 1
