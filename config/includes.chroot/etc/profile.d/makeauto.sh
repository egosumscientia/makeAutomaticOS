#!/bin/bash
IMG="/usr/share/backgrounds/makeAuto-logo.jpeg"

# Aplica el tema oscuro
xfconf-query -c xsettings -n -t string -p /Net/ThemeName -s "Adwaita-dark"

# Cambia el fondo de escritorio
for m in $(xfconf-query -c xfce4-desktop -l | grep last-image); do
    xfconf-query -c xfce4-desktop -p "$m" -s "$IMG"
done
