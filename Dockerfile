# Usar una imagen base de Nginx
FROM nginx:alpine

# Copiar los archivos de tu portafolio al servidor web de Nginx
COPY index.html /usr/share/nginx/html
COPY assets /usr/share/nginx/html/assets

# Exponer el puerto 80 (el puerto estándar de Nginx dentro del contenedor)
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
