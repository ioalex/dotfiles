# vim:ft=zsh
# shellcheck shell=bash
# shellcheck disable=SC1087,SC2154

# Fall back Prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# shellcheck source=/dev/null
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
