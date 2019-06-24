# Entorno Nodejs y mysql

Entorno para desarrollo de API sencillo

## Uso 

1. Crear la imagen de node con el código dentro
`docker build -t nodeapp .`

2. Levantar el entorno
`docker-composer up -d`

## Provisionando el container de mysql

1. Entrar al container de mysql
`docker exec -it node_mysql bash`

2. Ir a la carpeta home
cd /home

3. Correr el aprovisionamiento en caso de desear configurar respaldos de las db
chmod 777 provision.sh
./provision.sh

**Nota: Para editar las fechas de creación de los backups**
Editar dentro de provision.sh previo al aprovisionamiento
Editar ./db_commands/backup.sh para editar los respaldos de DB