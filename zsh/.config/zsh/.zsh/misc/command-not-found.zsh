# vim:ft=zsh
# shellcheck shell=bash
# shellcheck disable=SC2206,SC2059,SC2034

# Uses pacman
# Note: The files database of pacman is separate from the normal sync database and it needs to be fetched using pacman -Fy
# Source: <https://wiki.archlinux.org/title/Zsh#pacman_-F_%22command_not_found%22_handler>

function command_not_found_handler {
  if [ -d /sbin/pacman ]; then
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
    printf 'zsh: command not found: %s\n' "$1"
    local entries=(
        ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"}
    )
    if (( ${#entries[@]} ))
    then
        printf "${bright}$1${reset} may be found in the following packages:\n"
        local pkg
        for entry in "${entries[@]}"
        do
            # (repo package version file)
            local fields=(
                ${(0)entry}
            )
            if [[ "$pkg" != "${fields[2]}" ]]
            then
                printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
            fi
            printf '    /%s\n' "${fields[4]}"
            pkg="${fields[2]}"
        done
    fi
  fi
}
