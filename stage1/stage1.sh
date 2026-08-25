#!/bin/bash
 # 1.- Completar el archivo .env
echo "####################################"
echo "# EJECUTANDO ENTORNO DE PRUEBAS... #"
echo "####################################"

echo ""
read -p "Introduce tu usuario para la base de datos: " DB_USER
echo -n "Introduce tu contraseña para la base de datos: " 
read -s DB_PASS
echo ""

echo "Introduce la contraseña para el ROOT de MariaDB: "
read -s ROOT_PASS
echo ""

echo "Generando clave secreta para CTFd..."
SECRET_KEY=$(openssl rand -hex 16)

# 2. Crear el archivo .env volcando las variables
echo "Creando el archivo .env..."
cat <<EOF > .env
MYSQL_USER=$DB_USER
MYSQL_PASSWORD=$DB_PASS
MYSQL_DATABASE=ctfd
MYSQL_ROOT_PASSWORD=$ROOT_PASS
CTFD_SECRET_KEY=$SECRET_KEY
EOF

echo "¡Archivo .env generado con éxito!"

# 3. Levantar la infraestructura (Opcional)
echo ""
read -p "¿Quieres levantar los contenedores ahora? (s/n): " ARRANCAR

if [[ "$ARRANCAR" == "s" || "$ARRANCAR" == "S" ]]; then
    echo "Iniciando Docker Compose..."
    docker compose up -d
    echo "¡Laboratorio listo! Conecta tu túnel y entra en http://localhost:8010"
else
    echo "Perfecto, configuración guardada. Ejecuta 'docker compose up -d' cuando estés listo."
fi