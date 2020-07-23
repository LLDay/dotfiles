#!/bin/bash
# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin/core_perl:/usr/bin:$HOME/.local/bin:$HOME/Documents/scripts"
export PANEL_FIFO="/tmp/panel-fifo"
export PATH
export XDG_CONFIG_HOME="$HOME/.config"
export BSPWM_SOCKET="/tmp/bspwm-socket"
export XDG_CONFIG_DIRS=/usr/etc/xdg:/etc/xdg
export GUI_EDITOR=/usr/bin/code
export BROWSER=/usr/bin/firefox
export TERMINAL=/usr/bin/urxvt
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export DOTDROP_CONFIG=/home/llday/.config/dotfiles/config.yaml

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
