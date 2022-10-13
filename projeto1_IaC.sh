#!/bin/bash

echo "Criando os diretórios..."
mkdir /projeto1
mkdir /projeto1/publico
mkdir /projeto1/adm
mkdir /projeto1/ven
mkdir /projeto1/sec

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."
useradd calos -c "Carlos Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Débora Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Josefina Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Beck" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Configurando as permissões dos diretórios..."
chown root:root /projeto1
chmod 777 /projeto1
chown root:root /projeto1/publico
chmod 777 /projeto1/publico
chown root:adm /projeto1/adm
chmod 770 /projeto1/adm
chown root:ven /projeto1/ven
chmod 770 /projeto1/ven
chown root:sec /projeto1/sec
chmod 770 /projeto1/sec

echo "Finalizado com sucesso!"