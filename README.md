# Modelo de Ciberseguridad para MicroRed

Este repositorio contiene la aplicación para evaluar el Nivel de Madurez en Términos de Seguridad de una MicroRed. El proyecto ha sido desarrollado por:

- **Ing. Daniela Jiménez**
- **Ing. Andrés Sumba**
- **Ing. Fabián Astudillo PhD**

Y modificado por:

- **Ing. Diego Narvaez**
- **Ing. Fabricio Malla**

El trabajo de los autores se puede encontrar en el repositorio institucional de la Universidad de Cuenca: [Ver trabajo](http://dspace.ucuenca.edu.ec/handle/123456789/41963)

## Instalación

Para utilizar esta aplicación, sigue los siguientes pasos:

### Requisitos Previos

Asegúrate de tener Docker y Docker Compose instalados en tu sistema. Para más información sobre cómo instalar estas herramientas, puedes visitar:

- [Instalar Docker](https://docs.docker.com/get-docker/)
- [Instalar Docker Compose](https://docs.docker.com/compose/install/)

### Descargar la Aplicación

Clona el repositorio utilizando el siguiente comando:

```bash
git clone https://github.com/narvydiego/ModeloCiberseguridadMicroRed.git
cd ModeloCiberseguridadMicroRed 
```

### Configuración de Variables de Entorno
Antes de levantar el servicio, puedes personalizar las variables de entorno en el archivo docker-compose.yml para ajustar los credenciales de autenticación y otras configuraciones importantes de la aplicación.

### Levantar el Servicio con Docker
Para iniciar la aplicación, ejecuta:

```bash
docker-compose up -d
```

Esto creará e iniciará todos los servicios necesarios en contenedores Docker. La aplicación estará accesible a través del navegador en [Abrir aplicación](http://localhost:8000).

### Uso
Una vez que la aplicación está en funcionamiento, puedes acceder a ella a través de tu navegador para comenzar a evaluar el nivel de seguridad de la microred. Sigue las instrucciones en pantalla para completar las evaluaciones.

### Soporte
Si encuentras algún problema al utilizar la aplicación, puedes crear un "issue" en el repositorio de GitHub o contactar directamente a alguno de los desarrolladores mencionados arriba.
