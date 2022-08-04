#########################################
#Author: Daniel Garcia 
#Date: 04/08/2022
#########################################
#Dockerfile que:
#-Instala Apache y SSH
#-Genera un usuario para correr la aplicación
#-Levanta los servicios de Apache y SSH
#-Copia el contenido de una página web de ejemplo para visualizar el contenido
#########################################


#Cargamos imagen de ubuntu
FROM ubuntu:latest

#Actualizamos los paquetes e instalamos ssh y sudo 
RUN apt-get update && apt-get install openssh-server sudo apache2 -y

#Creamos el usuario dgarcia y lo añadimos al grupo de sudo 
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 dgarcia 

#Cambiamos la contraseña del usuario dgarcia
RUN  echo 'dgarcia:sup3rP4ssw0rd' | chpasswd

#Levantamos el servicio de SSH
RUN service ssh start

#Exponemos el puerto del servicio SSH 
EXPOSE 22

#Corremos el demon de SSH
CMD ["/usr/sbin/sshd","-D"]

#Copiamos el sitio a la raiz 
COPY ./index.html /var/www/html

#Levantamos el servicio de apache2
RUN service apache2 start

#Exponemos el puerto del servicio HTTP 
EXPOSE 80