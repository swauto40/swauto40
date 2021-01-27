#!/bin/bash  

# My personal Ubuntu MATE 20.04 post-install script.
# WIP
# wget https://raw.githubusercontent.com/swauto40/swauto40/main/install_scripts/mate_post-install.sh && bash post-install.sh

# Enable firewall
sudo ufw enable
sudo ufw status

# Merge StevenBlack /etc/hosts
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
sudo cp /etc/hosts /etc/hosts.old
sudo cat hosts > /etc/hosts

# Update
sudo apt update
sudo apt upgrade -y
sudo apt autoremove --purge -y

# Install drivers
sudo ubuntu-drivers autoinstall -y

# Install misc deb apps
sudo apt install ubuntu-restricted-extras gnome-disk-utility pcmanfm filemanager-actions mousepad winff smplayer gpodder lollypop pulseeffects simplescreenrecorder gparted synaptic zim retext grub-customizer timeshift stegosuite flameshot gthumb bleachbit brasero dconf-editor font-manager deja-dup transmission-gtk catfish gtkhash nmap wireshark python3-pip -y

# Install deb themes
sudo apt install gnome-themes-extra gnome-themes-extra-data greybird-gtk-theme pop-gtk-theme breeze-gtk-theme yaru-theme-gtk arc-theme papirus-icon-theme pop-icon-theme -y

# Install deb terminal apps
sudo apt install firejail firejail-profiles firetools clamav clamav-docs imagemagick imagemagick-doc linuxlogo neofetch ncdu ffmpeg ffmpeg-doc mpv sox cmatrix cmatrix-xfont speedtest-cli aria2 parallel syncthing rclone rclone-browser android-tools-fastboot android-tools-adb libguestfs-tools httrack httrack-doc -y

# Install deb virtualbox
sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso -y

# Install snap apps
# These apps are up-to-date than in the repos
sudo snap install libreoffice
sudo snap install gimp
sudo snap install docker
sudo snap install youtube-dl
sudo snap install gallery-dl
sudo snap install code --classic
sudo snap install keepassxc
sudo snap install scrcpy
sudo snap install cherrytree
sudo snap install cawbird

# Install flatpak apps
# I only use flatpak for gaming apps
sudo apt install flatpak
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub org.libretro.RetroArch -y
flatpak install flathub org.DolphinEmu.dolphin-emu -y
flatpak install flathub org.ppsspp.PPSSPP -y
flatpak install flathub io.mgba.mGBA -y

























