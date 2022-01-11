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

echo "Instalando o GIT"    
apt-get install -y git
git init
#Clonando o repositório com o usuário e o token do github
git clone https://brunojose1977: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@github.com/brunojose1977/teste-conteiner-nginx-com-git
cd conteiner-nginx
git config --global user.name "brunojose1977"
git config --global user.email "brunojose1977@yahoo.com"
git config --global remote.origin.url=https://github.com/brunojose1977/teste-conteiner-nginx-com-git
git config --global branch.master.remote=origin
git config --global branch.master.merge=refs/heads/master

echo "Test from NGIX container!" > test-from-container.txt

git add test-from-container.txt
#Daqui pra baixo só funciona se adicionar a chave pública ao GITHUB da conta brunojose1977
git commit -m "First commit from my-nginx container!"
git remote add origin https://github.com/brunojose1977/teste-conteiner-nginx-com-git
git push

# Instalação será feita em /usr/bin/git
echo " "
#echo "Ferramentas instaladas! Experimente: htop, vtop, atop, nmon!"
echo "FIM - Verificar se a instalação do GIT ocorreu com sucesso e se o arquivo test-from-container.txt foi commitado ao repositório no GITHUB."
echo " "
cd /conteiner-nginx
pwd
git status
#echo "Rodando as ferramentas!"
#vtop
