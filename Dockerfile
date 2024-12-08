# Usar la imagen oficial de Nginx como base
FROM nginx:latest

# Copiar el archivo index.html al directorio de Nginx
COPY index.html /usr/share/nginx/html/index.html
