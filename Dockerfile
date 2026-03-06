# Usa una versión ligera de Node.js
FROM node:18-alpine
# Crea el directorio de trabajo dentro del contenedor
WORKDIR /APP
# Copia solo los archivos de dependencias primero (aprovecha el caché)
COPY package*.json ./
# Instala las dependencias de producción
RUN npm install 
# Copia el resto del código (carpeta src, etc.)
COPY .  .
# Expone el puerto que usa tu app (ejemplo: 3000)
EXPOSE 3000
# Comando para arrancar la app
CMD ["node", "index.js"]
