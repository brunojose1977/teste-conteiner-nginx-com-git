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

#### A partir daqui todos os comando precisam ser feito na mão.
#### Depois de muitos testes eu verifiquei que esse comando de clone rodando na barriga do conteiner invalida o token para o uso de todos os repositórios.
#### Depois de invalidado é preciso gerar um novo TOKEN e regerar todos os clones novamente.
#### Como melhoria seria bom colocar esse token em variável na chamada do DOCKER RUN com parâmetro -e token=XXXXXXXXXX

#Clonando o repositório que guarda os artefatos que são gerados a partir do conteiner nginx
#### git clone https://brunojose1977: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@github.com/brunojose1977/nginx-conteiner-integration-test.git

#Criando um arquivo de teste para testar a integração com o repositório remoto
#### cd nginx-conteiner-integration-test
#### echo "Test from NGIX container!" > test-from-container.txt
#### git add test-from-container.txt
#### git commit -m "First commit from my-nginx container!"

#Atualizando o repositório remoto
#### git push
#### git status

#### echo "Verificar no repositório brunojose1977/nginx-conteiner-integration-test o arquivo test-from-container.txt foi criado!"
echo " ** FIM ** "
echo " "
