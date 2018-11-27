# CBFixesAndTweaks

This project is a fork of fascinatingcaptain's github repo. The audio tweaks have been removed, since audio support for Gandof is now in the current kernel. This also means the logic for checking for Swanky or Gandof was unnecessary, and was also removed.

This script should work on any version of the Toshiba Chromebook 2. I would **assume** but cannot confirm that it will work on most any chromebook with the same keyboard layout - but that's a big **assume**, so don't get mad at me when it doesn't work.

This script comes with no warranties, guarantees of function, etc.

# Instructions

Download or clone the repo and run the script:

`sudo ./CBFixesAndTweaks.sh`

Let it do it's thing, and then reboot and log back in. Voila! Media keys mapped!

## A Note on XF86Refresh vs XF86Reload

I noticed that pressing the `Reload` button functioned like `CTRL + F` in Chrome, and didn't reload/refresh the page. However, Epiphany and Firefox worked fine. Since I primarily use Chrome, I switched the keymapping to `XF86Reload`, which corrected the behavior in Chrome but broke it in Firefox (Epiphany apparently accepts either). Some cursory reading seems to indicate this is an old issue in Firefox that probably isn't going to get fixed any time soon. If you run into this issue, simply swap out `XF86Refresh` for `XF86Reload` in the file `pc`.
