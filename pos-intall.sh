#!/bin/bash


## abaixo plugins de auxilio ##

# intalar Multi Monitors Add-On:
# intstalar Sound Input & Output Device Chooser


## anotacoes ##
# sudo docker-compose up -d
# instalar mongodb
# instalar angular
# tema dracula #code 
# material icon #code
# npm i - restaurar node-modules e etc


## atualizando e removendo as travas eventuais ##
sudo apt update
sudo apt upgrade -y 
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/chache/apt/archives/lock;


## remover snaps nao usados ##
sudo snap remove gnome-system-monitor gnome-calculator gnome-characters gnome-logs && sudo apt install gnome-system-monitor gnome-calculator gnome-characters gnome-logs -y # tirar itens nao utilizados 


## Instalando pacotes e programas do repositório deb do Ubuntu 
sudo apt-add-repository ppa:graphics-drivers/ppa -y # Drivers adicionais Nvidia
sudo apt install ubunto-restricted-extras -y # biblioteca  
sudo apt install virtualbox -y # virtual box
sudo apt install python3 python-pip wine docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y   ## docker, GitHub, bibliotecas, flatpack e python 
# sudo apt install nautilus-dropbox -y    ## descomentar para utiizar


## tema dark ##
sudo apt install gnome-tweaks -y 

## Dracula Terminal ##
#sudo apt-get install dconf-cli 
#git clone https://github.com/dracula/gnome-terminal
#cd gnome-terminal
#./install.sh


## download de programas externos ##
mkdir /home/$USER/Git  ## Pasta para repositorio GitHub 
 #cd /home/$USER/Git/
 #git clone *informe caminho github*
mkdir /home/$USER/Downloads/Programas
cd /home/$USER/Downloads/Programas
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb # Google Chrome
sudo dpkg -i *.deb


## Intalando Snaps ##
sudo snap install slack --classic  #Slack 
sudo snap install code --classic  # Visual Studio Code 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -  #Node js V12
sudo apt-get install -y nodejs # node JS
sudo apt-get install -y build-essential #Bibliotecas essenciais NodeJS
sudo snap install spotify  # spotfy
sudo apt install steam -y # Steam


## Adicionando repositório Flathub ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 


## Instalando Apps do Flathub ## 
sudo flatpak install flathub com.sublimetext.three -y  #Sublime Text
sudo flatpak install flathub com.discordapp.Discord -y #Discord 
sudo flatpak install flathub org.gabmus.hydrapaper -y #Programa para papel de parede


## lutris e wine ##
sudo add-apt-repository ppa:lutris-team/lutris -y && sudo apt update && sudo apt-get install lutris -y #Lutris 
sudo dpkg --add-architecture i386 
sudo apt install wine wine64 -y #Wine 



## Atualização do sistema ##
sudo apt update 
sudo apt dist-upgrade -y 
sudo apt autoclean -y 
sudo apt autoremove -y 


## Fim do Script ##
echo "Finalizado"



## created by Vitor Mazzotini
