#!/bin/sh
# Bruno Silva
# 27-12-2021
# Esse arquivo e copiado para dentro do conteiner e executado la.

#echo "Iniciando a Instalação das ferramentas no Conteiner Linux Ubuntu"
#echo " "
echo "Atualizando o Ubuntu"
apt-get update -y
#echo " "
#echo "Instalando o HTOP"
#apt-get install -y htop
#htop
#echo " "
#echo "Instalando o ATOP"
#apt-get install -y atop
#atop
#echo " "
#echo "Instalando o NMON"
#apt-get install -y nmon
#nmon
#echo " "

#Instalação do GIT
# Instalação será feita em /usr/bin/git
echo "Instalando o GIT"
apt-get install -y git

#Configuração do usuário, o mesmo do Gitlab
git config --global user.name "brunojose1977"
git config --global user.email "brunojose1977@yahoo.com"

#Clonando o repositório com o usuário e o token do github
git clone https://brunojose1977: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@github.com/brunojose1977/teste-conteiner-nginx-com-git

#Criando um arquivo de teste para testar a integração com o repositório remoto
##cd teste-conteiner-nginx-com-git
##echo "Test from NGIX container!" > test-from-container.txt
##git add test-from-container.txt
##git commit -m "First commit from my-nginx container!"

#Atualizando o repositório remoto
##git push
##git status

echo " "
#echo "Ferramentas instaladas! Experimente: htop, vtop, atop, nmon!"
##echo "FIM - Verificar se a instalação do GIT ocorreu com sucesso e se o arquivo test-from-container.txt foi commitado ao repositório no GITHUB."
##echo " "

##git status
