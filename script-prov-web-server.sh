#!/bin/bash

echo "atualizando do servidor"
apt-get update -y
apt-get upgrade -y

echo "instalando as aplicacoes"
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando projeto"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "efetuando limpeza na aplicacao"
rm /var/www/html/index.html
rm /tmp/main.zip

echo "copiando arquivos do projeto"
cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "servidor web configurado!"

