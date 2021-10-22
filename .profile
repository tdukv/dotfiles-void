# shellcheck shell=bash
# .bash_profile

export EDITOR="nano"
export PAGER="less"
export TERMINAL="st"
export BROWSER="palemoon"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export HISTFILE="$XDG_DATA_HOME"/bash/history
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export LYNX_CFG_PATH="$XDG_CONFIG_HOME"/lynx
export LYNX_LSS="$XDG_CONFIG_HOME"/lynx/lynx.lss
export DTE_HOME="$XDG_CONFIG_HOME"/dte
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc

export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

## By default these file paths are hardcoded in startx.
## Manually edit /bin/startx to use these vars instead.
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

export HIGHLIGHT_OPTIONS="--force -O ansi"

export LESSOPEN="|highlight %s"
export LESSHISTFILE="-"
export LESS=-RN
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;46;30m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

[ -d "$HOME/bin" ] &&
    PATH="$HOME/bin:$PATH"

[ -d "$HOME/.local/bin" ] &&
    PATH="$HOME/.local/bin:$PATH"

[ -d "$HOME/.local/appimage" ] &&
    PATH="$HOME/.local/appimage:$PATH"

[ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1 && exec startx
