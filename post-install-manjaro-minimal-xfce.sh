#!/bin/bash

echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

echo ""
echo "Instalando dependencias..."
sudo pacman -S --needed base-devel git cmake ninja --noconfirm

echo ""
echo "Instalando yay..."
sudo pacman -S yay --noconfirm

echo ""
echo "Instalando plugins de flatpak y snap de pamac..."
sudo pacman -S  libpamac-flatpak-plugin libpamac-snap-plugin --noconfirm

echo ""
#echo "Instalando aplicaciones comnues (repos oficiales)..."
# curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
#sudo pacman -S firefox bitwarden chromium backintime flameshot veracrypt --noconfirm
echo "Reinstalando aplicaciones desde installed.txt..."
sudo pacman -S $(cat install.txt) --noconfirm

echo ""
#echo "Instalando aplicaciones extra (AUR)..."
#yay -S google-chrome megasync-bin spotify --noconfirm
echo "Reinstalando aplicaciones desde installed-aur.txt..."
sudo yay -S $(cat installed-aur.txt) --noconfirm

echo ""
echo "Eliminando paquetes huérfanos..."
yay -Yc

echo ""
echo "Configurando estilos..."
# https://www.xfce-look.org/p/1441725
sudo ln -s ~/.themes/* /usr/share/themes/
sudo ln -s ~/.icons/* /usr/share/icons/

echo ""
echo "Finalizado"
echo ""
