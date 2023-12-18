# .fluxbox/startup no parece funcionar, por eso uso este archivo para inicializar Fluxbox
xmodmap -e 'keycode 127 = Escape'  # Mapea la tecla ESC en la tecla Pausa (Dell Inspiron 6400)
nm-applet &  # Applet de red
volumeicon &  # Applet de volumen
nitrogen --set-zoom-fill /home/usuarie/Imágenes/mountains.jpg &  # Aplicar fondo de pantalla
exec fluxbox
