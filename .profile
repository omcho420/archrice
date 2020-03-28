# important exports
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# default programs:
export TERMINAL="st"
export EDITOR="nvim"
export BROWSER="firefox"
export FILE="lf"

# config exports
export ZDOTDIR="$HOME/.config/zsh"
export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# tty1 auto X start
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx

# mpd
mpd >/dev/null 2>&1 &

# check aliasrc
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# private aliases
[ -f "$HOME/.config/aliasrc_p" ] && source "$HOME/.config/aliasrc_p"
