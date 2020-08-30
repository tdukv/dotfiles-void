#!/bin/sh

# from
# https://st.suckless.org/patches/externalpipe/linkgrabber.sh

regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
url=$(grep -aPo "$regex" | dmenu -p "Go:") || exit
[ -n "$url" ] && $BROWSER "$url"
