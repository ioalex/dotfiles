#!/bin/sh
#
# ranger.sh
# Author: Alex <alex@alexhe.io>
# Year: 2021
#
# Distributed under terms of the Unlicense license.
#

# Installs Ranger Plugins
echo "Installing plugins for Ranger..."
echo "\n"

if ! command -v ranger >/dev/null 2>&1; then
  echo "\u274c: The command 'ranger' was not found on your system."
  echo "Please try running 'brew install ranger' or use the 'brew.sh' script"
  echo "before attempting to install plugins!"
else
  # Ranger Dev Icons
  git clone https://github.com/alexanderjeurissen/ranger_devicons "$XDG_CONFIG_HOME/ranger/plugins/ranger_devicons"
  echo "\n"
  echo "\u2713: Plugins for Ranger have been installed."
fi
