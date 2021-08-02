# shellcheck shell=bash
# shellcheck disable=SC2157,SC1036,SC1090,SC2128,SC2086
#
# ~/.bashrc
#

# Source shell configuration
shellrc+=("$SHELL_CONFIG/aliasrc")
for file in "${shellrc[@]}"; do
  if [[ -a "$file" ]]; then
    # shellcheck source=/dev/null
    source "$file"
  fi
done

# Source shell functions
if [ -z "$SHELL_CONFIG/functions" ]; then
   echo "No functions available."
else
  for file in "$SHELL_CONFIG/functions"/*; do
    source $file
  done
fi

# Source Z-Shell configuration files
config_files=(~/.config/bash/.bash/**/*.bash(N))
for file in ${config_files}
do
  source $file
done

eval "$(zoxide init bash)"
