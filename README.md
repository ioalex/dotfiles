<h1 align="center">
    <code>dotfiles 👨‍💻</code>
</h1>

<h4 align="center"><i>Personal dotfiles for Arch Linux.</i></h4>

- [Features](#features)
- [Information](#information)
- [Quickstart](#quickstart)
- [Wiki](#wiki)
- [Inspiration](#inspiration)

## Features

- Syntax Highlighting
- Fish-like Autosuggestions

## Information

- **Distro**: [Arch Linux](https://archlinux.org/)
- **Display Manager**: [Ly](https://github.com/nullgemm/ly)
- **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
- **App Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Bar**: [polybar](https://github.com/polybar/polybar)
- **Lockscreen**: [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)
- **Terminal**: [Alacritty](https://github.com/alacritty/alacritty)
- **Shell**: [Z Shell (zsh)](https://www.zsh.org/)

## Quickstart

```sh
$ sudo pacman -S stow                                                # Install GNU Stow
$ git clone --recursive https://github.com/ioalex/dotfiles.git       # Clone this git repository
$ cd ~/dotfiles                                                      # cd to newly cloned directory
$ stow -t ~ stow --verbose --dotfiles                                # Setup GNU Stow
$ make
```

## Wiki

Please see the [wiki](https://github.com/ioalex/dotfiles/wiki) for more in-depth information.

## Inspiration

- [Kraymer/F-dotfiles](https://github.com/Kraymer/F-dotfiles)
- [LukeSmithxyz/voidrice](https://github.com/LukeSmithxyz/voidrice)
- [dwt1/dotfiles](https://gitlab.com/dwt1/dotfiles)

```text
    .--.
   |o_o |
   |:_/ |
  //   \ \
 (|     | )
/'\_   _/`\
\___)=(___/

```
