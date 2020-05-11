#!/bin/bash

### abaixo plugins de auxilio  https://extensions.gnome.org/  ###
   ## Unite 
   ## User Themes
   ## Multi Monitors Add-On
   ## Sound Input & Output Device Chooser
   ## Dash to Dock
   ## vitals
### criar pasta .themes e colcoar o Mojave-dark

### anotacoes ###
   ## tema dracula #VScode 
   ## material icon #VScode

### atualizando e removendo as travas eventuais ###
sudo apt update
sudo apt upgrade -y 
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/chache/apt/archives/lock;

### Ajustes do sistema ###
sudo snap remove gnome-system-monitor gnome-calculator gnome-characters gnome-logs && sudo apt install gnome-system-monitor gnome-calculator gnome-characters gnome-logs -y
sudo apt-add-repository ppa:graphics-drivers/ppa -y
sudo apt remove gnome-online-accounts -y
sudo apt purge ubuntu-software gnome-software -y
sudo apt purge cups unattended-upgrades -y
sudo apt install ubunto-restricted-extras -y
sudo apt install gnome-session -y

### tema ###
sudo apt install gnome-tweaks -y 
# sudo apt install zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
### dps ### 
    ## nano ~/.zshrc
    ## ZSH_THEME="af-magic"

### Instalando programas ###
sudo apt install curl
sudo apt install python3 wine docker docker-compose git libssl-dev flatpak gnome-software-plugin-flatpak -y
sudo apt install virtualbox -y

### download de programas externos ###
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i *.deb


### Intalando Snaps ###
# sudo snap install slack --classic
sudo snap install code --classic 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo apt-get update && sudo apt-get install yarn -y
sudo apt-get install --no-install-recommends yarn
sudo snap install spotify
sudo apt install steam -y
sudo snap install remmina 
sudo snap install postman
#sudo snap install insomnia
sudo apt install stacer -y

### Adicionando repositório Flathub ###
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 

### Instalando Apps do Flathub ###
sudo flatpak install flathub com.discordapp.Discord -y
sudo flatpak install flathub org.gabmus.hydrapaper -y
sudo flatpak install flathub io.github.celluloid_player.Celluloid -y

### lutris e wine ###
sudo add-apt-repository ppa:lutris-team/lutris -y && sudo apt update && sudo apt-get install lutris -y
sudo dpkg --add-architecture i386 
sudo apt install wine wine64 -y

### aplicativos de sessao e otimizacao ###
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
    ## abra o manager applicaton e limpe o que nao utilizar
    ## Armazenador do Tracker
    ## Bem-vindo
    ## Definições iniciais
    ## gnome-disk-utility notification plugin for GNOME Settings Daemon
    ## GNOME Initial Setup Copy Worker
    ## GNOME Programas
    ## GNOME Settings Daemon's print-notifications plugin
    ## GNOME Settings Daemon's screensaver-proxy plugin
    ## GNOME Settings Daemon's sharing plugin
    ## GNOME Settings Daemon's smartcard plugin
    ## GNOME Settings Daemon's wacom plugin
    ## update-notifier
    ## Orca screen reader
    ## Snap user application autostart helper
    ## Tracker File System Miner
    ## Tracker Metadata Extractor
    ## Ubuntu report try to sends metrics data on release upgrade
    
# sudo nano /etc/sysctl.d/99-sysctl.conf
	## colocar as infos abaixo nas ultimas 2 linhas
	## vm.swappiness=5
	## vm.vfs_cache_pressure=50


##### Atualização do sistema ###
sudo apt update 
sudo apt dist-upgrade -y 
sudo apt autoclean -y 
sudo apt autoremove -y 

### Fim do Script ###
echo "Finalizado"

### created by Vitor Mazzotini ###