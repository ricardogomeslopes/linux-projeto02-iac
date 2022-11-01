#!/bin/bash

echo "Atualizando Servidor"
apt-get update
apt-get upgrade -y

echo "Instalando servidor WEB"
apt-get install apache2 -y

echo "Instalando Unzip"
apt-get install unzip -y

echo "Download da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando a aplicação"
unzip main.zip

echo "Copiar para diretório do apache"
cp -r -f /tmp/linux-site-dio-main/* /var/www/html/

echo "Exluindo arquivos temporários"
rm -f -r /tmp/linux-site-dio-main
