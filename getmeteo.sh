#!/bin/sh

#wget http://wetterstationen.meteomedia.de/messnetz/vorhersagegrafik/108380.png -O /dev/stdout | convert /dev/stdin -fuzz 10% -fill white -opaque 'rgb(100,150,200)' -opaque 'rgb(220,220,220)' -opaque 'rgb(50,110,170)' -colorspace gray ~/Pictures/Wallpapers/ulm-meteoprognose.png
#xviewer -f ulm-meteoprognose.png&
wget http://wetterstationen.meteomedia.de/messnetz/vorhersagegrafik/108400.png -O /dev/stdout | convert /dev/stdin -fuzz 10% -fill white -opaque 'rgb(100,150,200)' -opaque 'rgb(220,220,220)' -opaque 'rgb(50,110,170)' ~/Pictures/Wallpapers/ulm-meteoprognose.png
#killall wallpapers.sh
#~/bin/wallpapers.sh &
xviewer -f ~/Pictures/Wallpapers/ulm-meteoprognose.png &
