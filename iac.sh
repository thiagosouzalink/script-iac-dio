#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
echo "Diretório /publico criado"
mkdir /adm
echo "Diretório /adm criado"
mkdir /ven
echo "Diretório /ven criado"
mkdir /sec
echo "Diretório /sec criado"

echo -e "\nCriando grupos de usuários..."
groupadd GRP_ADM
echo "Grupo GRP_ADM criado"
groupadd GRP_VEN
echo "Grupo GRP_VEN criado"
groupadd GRP_SEC
echo "Grupo GRP_SEC criado"

echo -e "\nCriando usuários..."
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) carlos criado."
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) maria criado."
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) joao criado."

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) debora criado."
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) sebastiana criado."
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) roberto criado."

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) josefina criado."
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) amanda criado."
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd Senha123)
echo "Usuário(a) rogerio criado."

echo -e "\nAdicionando usuários aos grupos..."
usermod -G GRP_ADM carlos
echo "Usuário(a) carlos adicionado(a) ao grupo GRP_ADM"
usermod -G GRP_ADM maria
echo "Usuário(a) maria adicionado(a) ao grupo GRP_ADM"
usermod -G GRP_ADM joao
echo "Usuário(a) joao adicionado(a) ao grupo GRP_ADM"

usermod -G GRP_VEN debora
echo "Usuário(a) debora adicionado(a) ao grupo GRP_VEN"
usermod -G GRP_VEN sebastiana
echo "Usuário(a) sebastiana adicionado(a) ao grupo GRP_VEN"
usermod -G GRP_VEN roberto
echo "Usuário(a) roberto adicionado(a) ao grupo GRP_VEN"

usermod -G GRP_SEC josefina
echo "Usuário(a) josefina adicionado(a) ao grupo GRP_SEC"
usermod -G GRP_SEC amanda
echo "Usuário(a) amanda adicionado(a) ao grupo GRP_SEC"
usermod -G GRP_SEC rogerio
echo "Usuário(a) rogerio adicionado(a) ao grupo GRP_SEC"

echo -e "\nEspecificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo -e "\nScript finalizado..."

