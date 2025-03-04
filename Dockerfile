# Usa la imagen base de nginx
FROM nginx:alpine

# Copia la configuración personalizada de NGINX
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia los archivos generados por Unity a la carpeta de NGINX
COPY ./Build /usr/share/nginx/html/Build
COPY ./TemplateData /usr/share/nginx/html/TemplateData
COPY ./index.html /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]