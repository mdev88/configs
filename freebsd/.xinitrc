#!/bin/sh
setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap es
numlockx &
networkmgr &
xcape -e 'Pause=Escape'
nitrogen --set-scaled Images/fondo-montanas.jpg &

exec jwm
