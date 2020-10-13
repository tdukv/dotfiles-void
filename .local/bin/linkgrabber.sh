#!/bin/sh

# from
# https://st.suckless.org/patches/externalpipe/linkgrabber.sh

regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
url=$(grep -aPo "$regex" | dmenu -p "Go:") || exit

case "$0" in
  *linkgrabber_dmenu)
      prg=$(printf "%s\nmpv\nfeh\n" "$BROWSER" | dmenu -p "open with") ;;
  *)
      prg="$BROWSER" ;;
esac

[ -z "$prg" ] && exit
[ -n "$url" ] && $prg "$url" &
