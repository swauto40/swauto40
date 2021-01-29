#!/bin/bash

# Mount encrypted Veracrypt backup volume
veracrypt --slot=1 --mount '/media/ds/NTFS-E/linux-base' 

# Compress browser config
# Firefox
rm -v ~/Configs/mozilla.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/mozilla.tar.xz ~/.mozilla/ && xz -tvv ~/Configs/mozilla.tar.xz
# Vivaldi
rm -v ~/Configs/main/vivaldi.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/main/vivaldi.tar.xz ~/.config/vivaldi/ && xz -tvv ~/Configs/main/vivaldi.tar.xz

# Copy app config
rsync -rvP --delete ~/.bash_aliases ~/Configs/bash_aliases
rsync -rvP --delete ~/.config/Code/ ~/Configs/main/Code/
rsync -rvP --delete ~/.config/Dharkael/ ~/Configs/main/Dharkael/
rsync -rvP --delete ~/.config/filemanager-actions/ ~/Configs/filemanager-actions/
rsync -rvP --delete ~/.config/mpv/ ~/Configs/main/mpv/
rsync -rvP --delete ~/.config/pcmanfm/ ~/Configs/main/pcmanfm/
rsync -rvP --delete ~/.config/PulseEffects/ ~/Configs/main/PulseEffects/
rsync -rvP --delete ~/.config/smplayer/ ~/Configs/main/smplayer/
rsync -rvP --delete ~/.config/tilda/ ~/Configs/main/tilda/
rsync -rvP --delete ~/.config/transmission/ ~/Configs/main/transmission/
rsync -rvP --delete ~/.config/zim/ ~/Configs/main/zim/

# Copy local/share config
rsync -rvP --delete ~/.local/share/file-manager/ ~/Configs/local/file-manager/
rsync -rvP --delete ~/.local/share/lollypop/ ~/Configs/local/lollypop/
rsync -rvP --delete ~/.local/share/plank/ ~/Configs/local/plank/

# Compress app settings
rm -v ~/Configs/main-config.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/main-config.tar.xz ~/Configs/main/ && xz -tvv ~/Configs/main-config.tar.xz

# Compress local/share app settings
rm -v ~/Configs/local.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/local.tar.xz ~/Configs/local/ && xz -tvv ~/Configs/local.tar.xz

# Compress snap app settings
rm -v ~/Configs/snap.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/snap.tar.xz ~/snap/ && xz -tvv ~/Configs/snap.tar.xz

# Flatpak
# PPSSPP
rm -v ~/Configs/flatpak/org.ppsspp.PPSSPP.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/flatpak/org.ppsspp.PPSSPP.tar.xz ~/.var/app/org.ppsspp.PPSSPP/config/ppsspp/ && xz -tvv ~/Configs/flatpak/org.ppsspp.PPSSPP.tar.xz
# RetroArch
rm -v ~/Configs/flatpak/org.libretro.RetroArch.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/flatpak/org.libretro.RetroArch.tar.xz ~/.var/app/org.libretro.RetroArch/config/retroarch/ && xz -tvv ~/Configs/flatpak/org.libretro.RetroArch.tar.xz
# Steam
rm -v ~/Configs/flatpak/com.valvesoftware.Steam.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/flatpak/com.valvesoftware.Steam.tar.xz ~/.var/app/com.valvesoftware.Steam/ && xz -tvv ~/Configs/flatpak/com.valvesoftware.Steam.tar.xz
# Dolphin-emu
rm -v ~/Configs/flatpak/org.DolphinEmu.dolphin-emu.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/flatpak/org.DolphinEmu.dolphin-emu.tar.xz ~/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/ && xz -tvv ~/Configs/flatpak/org.DolphinEmu.dolphin-emu.tar.xz
# mGBA
rm -v ~/Configs/flatpak/io.mgba.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Configs/flatpak/io.mgba.tar.xz ~/.var/app/io.mgba.mGBA/config/mgba/ && xz -tvv ~/Configs/flatpak/io.mgba.tar.xz

# Refresh/Compress db files
rm -v ~/db/db-backup.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/db/db-backup.tar.xz db/main-ds db/x170764.old db/x170764 && xz -tvv db/db-backup.tar.xz

# Refresh/Compress zim notebook
rm -v ~/Documents/notebook-backup.tar.xz
tar -cv -I 'xz -vve8T10' -f ~/Documents/notebook.tar.xz Documents/notebook/ && xz -tvv ~/Documents/notebook-backup.tar.xz

# Rsync to backup NTFS drive
rsync -rvP --delete ~/Apps/ /media/veracrypt1/Apps/
rsync -rvP --delete ~/Configs/ /media/veracrypt1/Configs/
rsync -rvP --delete ~/db/ /media/veracrypt1/db/
rsync -rvP --delete ~/Documents/ /media/veracrypt1/Documents/
rsync -rvP --delete ~/Downloads/ /media/veracrypt1/Downloads/
rsync -rvP --delete ~/Games/ /media/veracrypt1/Games/
rsync -rvP --delete ~/git/ /media/veracrypt1/git/
rsync -rvP --delete ~/gPodder/ /media/veracrypt1/gPodder/
rsync -rvP --delete ~/lmms/ /media/veracrypt1/lmms/
rsync -rvP --delete ~/Pictures/ /media/veracrypt1/Pictures/
rsync -rvP --delete ~/Scripts/ /media/veracrypt1/Scripts/
rsync -rvP --delete ~/Security/ /media/veracrypt1/Security/
rsync -rvP --delete ~/Server/ /media/veracrypt1/Server/
rsync -rvP --delete ~/Themes/ /media/veracrypt1/Themes/
rsync -rvP --delete ~/Videos/ /media/veracrypt1/Videos/
# rsync -rvP --delete "/home/ds/VirtualBox VMs/" "/media/veracrypt1/VirtualBox VMs/"

# Unmount encrypted Veracrypt volume
veracrypt -d






