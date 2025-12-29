#!/bin/sh

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
'com.apple.keylayout.ABC') LABEL='us' ;;
'com.apple.keylayout.LatinAmerican') LABEL='latam' ;;
esac

sketchybar --set $NAME label="$LABEL"
