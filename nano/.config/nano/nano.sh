#!/bin/sh
#
# nano.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installs Improved Syntax Highlighting for Nano
echo "Installing Improved Syntax Highlighting for Nano..."
echo "\n"

if ! command -v nano >/dev/null 2>&1; then
  echo "The command 'nano' was not found on your system."
  echo "Please try running 'brew install nano' or use the 'brew.sh' script"
  echo "before attempting to install syntax files!"
else
  git clone https://github.com/scopatz/nanorc.git "$XDG_CONFIG_HOME/nano/syntax/"
  echo "\n"
  cd "$XDG_CONFIG_HOME/nano/syntax/" || { echo "\u274c: Failure: ~/.config/nano/syntax/ not found!"; exit 1; }
  find . -type f ! -name "*.nanorc" -delete
  echo "\n"
  echo "\u2713: The following Nano syntax files have been installed to ~/.config/nano/syntax/ :"
  ls
  cd "$DOTFILES" || { echo "\u274c: Failure: ~/.dotfiles not found!"; exit 1; }
fi
