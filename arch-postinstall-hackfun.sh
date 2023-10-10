#!/bin/bash

echo "Actualizando el sistema..."
sudo pacman -Syu --noconfirm

echo ""
echo "Instalando dependencias..."
sudo pacman -S --needed base-devel git --noconfirm

echo ""
echo "Instalando yay..."
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si && cd .. && rm -rf yay

echo ""
echo "Instalando utilidades..."
yay -S p7zip unrar unzip network-manager-applet --noconfirm

echo ""
echo "Instalando aplicaciones..."
yay -S firefox abiword gnumeric inkscape gimp engrampa xpdf vlc --noconfirm

echo ""
echo "Eliminando paquetes obsoletos..."
yay -Yc

echo ""
echo "Personalizando..."
mkdir $HOME/Imágenes
cp assets/hackfun-ciudad.jpg $HOME/Imágenes/
cp assets/hackfun-teclas.jpg $HOME/Imágenes/
gsettings set org.mate.background picture-filename "$HOME/Imágenes/hackfun-ciudad.jpg"

echo ""
echo "Finalizado"
echo ""