#!/bin/bash
#
# Script to fix key mappings for Toshiba Chromebook 2 (2015), Gandof (The i3 version)
#
# Based of fascinatingcaptain's original script, but minus the audio tweaks since
# Gandof audio works out-of-the box with the new kernel.
#
fix_keyboard_keys() {
	# make backup of original pc config file
	sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck

	# copy new pc config file
	sudo cp pc /usr/share/X11/xkb/symbols/

	# update config
	sudo rm -rf /var/lib/xkb/*
}
## ..functions ##

# apply keyboard remapping
fix_keyboard_keys
echo "*******************************************************"
echo "Remapped top row media keys"

## reboot
echo "*******************************************************"
read -p "Your Chromebook will now reboot! Press any key to continue..."
sudo shutdown -r now
