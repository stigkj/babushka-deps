# Several tools for flashing SD cards
# TODO: choose one

# A script to flash SD card images of any kind
#
# TODO: Make a dep of this:
#
# curl -O https://raw.githubusercontent.com/hypriot/flash/master/$(uname -s)/flash
# chmod +x flash
# sudo mv flash /usr/local/bin/flash

# Burn images to SD cards & USB drives, safe & easy
dep 'etcher.cask'

# Burn images to SD cards or other flash based memory nice and easy
dep 'fwup.managed'
