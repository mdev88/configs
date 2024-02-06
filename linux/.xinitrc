xmodmap -e 'keycode 127 = Escape' & # Mapea la tecla ESC en la tecla Pausa (Dell Inspiron 6400)
xmodmap -e 'keycode 173 = less' & # Mapea el signo < en la tecla multimedia Previous Track (Dell Inspiron 6400)
xmodmap -e 'keycode 171 = greater' & # Mapea el signo > en la tecla multimedia Next Track (Dell Inspiron 6400)

# Desactivar cambio de tty con Alt + izq/der
sudo sh -c 'dumpkeys -k|grep -v Incr_Console|grep -v Decr_Console|grep -v Last_Console|loadkeys'

nm-applet &  # Applet de red
volumeicon &  # Applet de volumen
nitrogen --set-zoom-fill /home/usuarie/Imágenes/mountains.jpg &
xgamma -gamma 1.1 &

#exec fluxbox
exec jwm
