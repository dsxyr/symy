#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
#. /etc/X11/Xsession

export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
export SYSFONT="fonts-wqy-microhei"
export LANGUAGE=zh_CN:zh

#export XIM=fcitx
#export XIM_PROGRAM=/usr/bin/fcitx
#export XIM_ARGS=""
#export GTK_IM_MODULE=xim 
#export QT_IM_MODULE=xim 

#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS="@im=fcitx"
systemctl start dbus &
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
exec openbox-session
