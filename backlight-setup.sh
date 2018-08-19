#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
X11_CONF=/etc/X11/xorg.conf
SYS_BACKLIGHT=/sys/class/backlight

echo "Checking backlight link $SYS_BACKLIGHT... $(ls $SYS_BACKLIGHT)"

echo "Checking X11 backlight config..."
if grep -qi backlight $X11_CONF ; then 
  echo "Adding X11 backlight config"
  cat $DIR/redshift.x11 >> $X11_CONF
fi

