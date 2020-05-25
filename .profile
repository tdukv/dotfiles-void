# .bash_profile

export EDITOR="nano"
export TERMINAL="st"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export XDG_DESKTOP_DIR="/tmp"
export XDG_DOWNLOAD_DIR="/tmp"
export XDG_TEMPLATES_DIR="/tmp"
export XDG_PUBLICSHARE_DIR="/tmp"
export XDG_DOCUMENTS_DIR="/tmp"
export XDG_MUSIC_DIR="/tmp"
export XDG_PICTURES_DIR="/tmp"
export XDG_VIDEOS_DIR="/tmp"

export HISTFILE="$XDG_DATA_HOME"/bash/history
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export DTE_HOME="$XDG_CONFIG_HOME"/dte
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

export LESSHISTFILE="-"
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;46;30m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

### Get the aliases and functions
##[ -f $HOME/.bashrc ] && . $HOME/.bashrc
