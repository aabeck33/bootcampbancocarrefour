#!/bin/bash

echo "Atualizando o servidor..."
yum upgrade
yum install httpd -y
yum install unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos da aplicação..."
unzip main.zip

echo "Copiando arquivos da aplicação para o servidor Web..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim!"