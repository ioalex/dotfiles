# Zsh

```text
├── .config/zsh/
│   ├── .zsh/
│   │   ├── completions/*         Contains various completion files
│   │   ├── misc/*                Contains miscellaneous .zsh files; eg. fzf, zinit config
│   │   ├── completions.zsh       User settings for completion in zsh
│   │   ├── config.zsh            Sets default zsh options for interactive shell
│   │   ├── history.zsh           Sets user sane history defaults
│   │   ├── key-bindings.zsh      Sets user default keybindings
│   │   └── prompt                Sets a fallback prompt; loads POWERLEVEL10K
│   ├── .p10k.zsh                 POWERLEVEL10K zsh theme config
│   └── .zshrc                    Routine loading all .zsh files; loads plugins via Zinit
└── .zshenv                       Sets environment variables for all users
```

This package uses [Zinit](https://github.com/zdharma/zinit), a flexible and fast zsh plugin manager which activates the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme. It loads aliases, functions and sets global environment variables from the `shell` package.

## Plugins

A list of plugins used in this configuration.

### General

**Theme**: [powerlevel10k](https://github.com/romkatv/powerlevel10k)

- [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-autopair](https://github.com/hlissner/zsh-autopair)
- [evalcache](https://github.com/mroth/evalcache/)
- [cd-gitroot](https://github.com/mollifier/cd-gitroot)
- [git-it-on.zsh](https://github.com/peterhurford/git-it-on.zsh)
- [OMZP: sudo](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/sudo/README.md)
- [OMZP: zsh_reload](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/README.md)

### Mac OSX Only

- [PZT: modules/osx](https://github.com/sorin-ionescu/prezto/blob/master/modules/osx/README.md)
- [OMZP: dash](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/dash/README.md)

#### Footnotes

OMZP refers to the [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) zsh framework

PZT refers to the [Prezto](https://github.com/sorin-ionescu/prezto) zsh framework
