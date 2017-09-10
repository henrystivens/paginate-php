Paginación con PHP
======

Código del ejemplo de paginación en PHP con KumbiaPHP 1.0RC, del manual: [Paginación en PHP fácil y rápida](https://www.kumbiaphp.com/blog/2017/07/21/paginacion-en-php-facil/)

[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/henrystivens/paginate-php/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/henrystivens/paginate-php/?branch=master)

## Correr en Docker

Como prerequisito debe tener instalado Docker en el sistema operatvo: [Obtener Docker](https://www.docker.com/products/overview)

### 1. Correr mysql con datos externos y publicado

``
docker run --detach --name=mysql-dev --env="MYSQL_ROOT_PASSWORD=root" --volume /home/usuario/mysql/data:/var/lib/mysql --publish 6603:3306 mysql:5.7
``

Cambia el valor del parámetro --volume por el directorio que desees

### 2. Importar base de datos

Importar el archivo *default/app/config/sql/paginate-php.sql*

### 3. Correr Apache + PHP 7

``
docker-compose up -d --build
``

o simplemente...

``
docker-compose up -d
``

Mirar la web en **http://localhost:8182**

La opción ``--build``, es sólo para la primera vez o cuando se cambian los ficheros del docker.

``docker-compose up`` (muestra el log en la terminal)

``docker-compose up -d `` (como demonio, sin datos en la terminal)