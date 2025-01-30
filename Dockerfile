# Usar una imagen base de Nginx para servir archivos estáticos
FROM nginx:alpine

# Copiar los archivos compilados de WebGL a la carpeta de Nginx
COPY ./Build /usr/share/nginx/html

# Copiar los archivos de TemplateData (si es necesario)
COPY ./TemplateData /usr/share/nginx/html/TemplateData

# Exponer el puerto 80 (puerto por defecto de Nginx)
EXPOSE 80

# Comando para iniciar Nginx cuando el contenedor se ejecute
CMD ["nginx", "-g", "daemon off;"]