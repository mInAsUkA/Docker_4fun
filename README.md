[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Naereen/badges/)

# Docker_4fun
Tarea de Docker para la clase de ciberseguridad en IoT del diplomado de Ciberseguridad de la UNAM

## Instalación
```bash
$ git clone https://github.com/mInAsUkA/Docker_4fun.git && cd ./Docker_4fun
$ sudo docker build -t docker4fun .
```
## Uso

```bash
$ sudo docker run -d --name docker4fun docker4fun 
```
> Nota: pudes usar el nombre que gustes para el contenedor

## Acceder al sitio web 

> Accede al sitio web desde la IP del docker para obtenerla puedes utilizar los siguientes comandos: 

```bash
$ sudo docker ps
```

> Del comando anterior se obtiene el ID de nuestra imagen 


```bash
$ sudo docker inspect <ID del docker> | grep "IPAddress"
```

## Conexión por ssh

> Para acceder por SSH simplemente se utiliza el siguiente comando 

```bash
$ sudo ssh usuario@<IP imagen docker>
```
