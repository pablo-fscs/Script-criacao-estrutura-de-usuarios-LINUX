#!bin/bash

echo "Criando diretórios..."

mkdir /home/publico
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -g GRP_SEC

echo "Alterando dono dos diretórios..."

chown root:GRP_ADM /home/adm
chown root:GRP_VEN /home/ven
chown root:GRP_SEC /home/sec

echo "Especificando as permissôes dos diretórios..."

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

echo "Finalizado...."
