<h1 align="center">
    <code>dotfiles 👨‍💻</code>
</h1>

<h4 align="center"><i>Personal dotfiles for Arch Linux.</i></h4>

- [Features](#features)
- [Information](#information)
- [Quickstart](#quickstart)
- [Inspiration](#inspiration)

## Features

- Syntax Highlighting
- Fish-like Autosuggestions

## Information

- **Distro**: [Arch Linux](https://archlinux.org/)
- **Display Manager**: [LightDM](https://github.com/canonical/lightdm)
- **Greeter**: [lightdm-gtk-greeter](https://github.com/Xubuntu/lightdm-gtk-greeter)
- **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
- **App Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Bar**: [polybar](https://github.com/polybar/polybar)
- **Lockscreen**: [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)
- **Terminal**: [Alacritty](https://github.com/alacritty/alacritty)
- **Shell**: [Z Shell (zsh)](https://www.zsh.org/)

## Quickstart

```sh
$ sudo pacman -S stow                                 # Install GNU Stow
$ git clone https://github.com/ioalex/dotfiles.git    # Clone this git repository
$ cd ~/dotfiles                                       # cd to newly cloned directory
$ stow -t ~ stow --verbose --dotfiles                 # Setup GNU Stow
$ make
```

## Inspiration

- [Kraymer/F-dotfiles](https://github.com/Kraymer/F-dotfiles)
- [LukeSmithxyz/voidrice](https://github.com/LukeSmithxyz/voidrice)
- [dwt1/dotfiles](https://gitlab.com/dwt1/dotfiles)
