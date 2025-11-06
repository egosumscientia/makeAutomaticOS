#!/usr/bin/env bash
IMG="/usr/share/backgrounds/makeAuto-logo.jpeg"

# Tema oscuro o el tuyo si existe
xfconf-query -c xsettings -n -t string -p /Net/ThemeName -s "Adwaita-dark"

# Aplica el fondo a todos los monitores detectados
for m in $(xfconf-query -c xfce4-desktop -l | grep last-image); do
  xfconf-query -c xfce4-desktop -p "$m" -s "$IMG"
done
