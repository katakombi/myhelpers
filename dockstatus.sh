lsusb -d 413c:2513 >/dev/null 2>&1
if [ "$?" -eq '0' ]; then echo "docked"; else echo "NOT docked"; fi
