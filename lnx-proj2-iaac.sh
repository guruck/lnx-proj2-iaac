#!/bin/bash
clear
echo "Atualizando o servidor Ubuntu"
apt-get update
apt-get upgrade -y

echo "Instalando pacote de serviço WEB"
apt-get install apache2 -y

echo "Instalando pacote para compactar arquivos"
apt-get install unzip -y

echo "Baixando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos da aplicação..."
unzip main.zip

echo "Copiando arquivos para disponibilizar aplicação..."
cp -R /tmp/linux-site-dio-main/* /var/www/html/