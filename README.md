<h1 align="center">
    <code>dotfiles 👨‍💻</code>
</h1>

<h4 align="center"><i>Personal dotfiles for Arch Linux, OSX & WSL2.</i></h4>

- [Features](#features)
- [Information](#information)
- [Quickstart](#quickstart)
- [Wiki](#wiki)
- [Inspiration](#inspiration)

## Features

- Syntax Highlighting
- Fish-like Autosuggestions

## Information

### [Arch Linux](https://archlinux.org/)

- **Display Manager**: [Ly](https://github.com/nullgemm/ly)
- **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
- **App Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Bar**: [polybar](https://github.com/polybar/polybar)
- **Lockscreen**: [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **Shell**: [Z Shell (zsh)](https://www.zsh.org/)

### Mac OSX

- **Release**: [macOS Big Sur 11.5.1](https://www.apple.com/au/macos/big-sur/)
- **Window Manager**: [Rectangle](https://github.com/rxhanson/Rectangle)
- **Package Manager**: [Homebrew](https://brew.sh/)
- **App Launcher**: [Alfred 4](https://www.alfredapp.com/)

### Windows 10 WSL2

- **Release**: Windows 10 Build 16237+
- **Distro**: [Ubuntu 20.04.2 LTS Build 20210222](https://www.microsoft.com/en-au/p/ubuntu-2004-lts/9n6svws3rx71)
- **Window Manager**: [AquaSnap](https://www.nurgo-software.com/products/aquasnap)
- **Package Manager**: [Chocolatey](https://chocolatey.org/)
- **App Launcher**: [PowerToys](https://github.com/microsoft/PowerToys)

## Quickstart

Install GNU Stow:

```sh
# Install GNU Stow
# Arch Linux:
sudo pacman -S stow

# Mac OSX:
brew install stow

# WSL2 / Ubuntu:
sudo apt-get stow
```

Get dots! 😎:

```sh
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
