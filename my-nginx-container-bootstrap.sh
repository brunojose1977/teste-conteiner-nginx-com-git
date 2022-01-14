#!/bin/sh
# Bruno Silva
# 14/01/2021
# Esse arquivo e copiado para dentro do conteiner e executado la.

#echo "Iniciando a Instalação das ferramentas no Conteiner Linux Ubuntu"
#echo " "
#echo "Atualizando o Ubuntu"
apt-get update -y
#Instalação do GIT
# Instalação será feita em /usr/bin/git
echo "Instalando o GIT"
apt-get install -y git

#Configuração do usuário, o mesmo do Gitlab
git config --global user.name "brunojose1977"
git config --global user.email "brunojose1977@yahoo.com"

echo " ** FIM ** "
echo " "
