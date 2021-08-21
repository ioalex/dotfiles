<h1 align="center">
    <code>dotfiles 👨‍💻</code>
</h1>

<h4 align="center"><i>Personal dotfiles for Arch Linux, OSX & WSL2.</i></h4>
<h4 align="center"><i>Powered by GNU <code>stow</code> 🐮 and <code>make</code> 🔨</i></h4>

- [Features](#features)
- [Information](#information)
  - [Arch Linux](#arch-linux)
  - [Mac OSX](#mac-osx)
  - [Windows 10 & WSL2](#windows-10--wsl2)
- [Colorscheme](#colorscheme)
  - [Gruvbox](#gruvbox)
- [Quickstart](#quickstart)
- [Wiki](#wiki)
- [Inspiration](#inspiration)

## Features

- Optimised interactive shell startup time
- Syntax Highlighting
- [Fish](https://fishshell.com/)-like Autosuggestions
- Functions for increased productivity

## Information

I primarily use and prefer [Z Shell (zsh)](https://www.zsh.org/), but occasionally use the [Bourne Again Shell (bash)](https://www.gnu.org/software/bash/) for educational and experimental purposes. I am also a long time [Alacritty](https://github.com/alacritty/alacritty) user, but I am slowly transitioning to @kovidgoyal's [kitty](https://github.com/kovidgoyal/kitty).

### [Arch Linux](https://archlinux.org/)

- **Display Manager**: [Ly](https://github.com/nullgemm/ly)
- **Window Manager**: [i3-gaps](https://github.com/Airblader/i3)
- **Package Manager**: [pacman](https://wiki.archlinux.org/title/Pacman) & [yay](https://github.com/Jguer/yay)
- **App Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Bar**: [polybar](https://github.com/polybar/polybar)
- **Lockscreen**: [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen)
- **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
- **Shell**: [Z Shell (zsh)](https://www.zsh.org/)

### [Mac OSX](https://www.apple.com/au/macos/big-sur/)

- **Release**: [macOS Big Sur 11.5.1](https://www.apple.com/au/macos/big-sur/)
- **Window Manager**: [Rectangle](https://github.com/rxhanson/Rectangle)
- **Package Manager**: [Homebrew](https://brew.sh/)
- **App Launcher**: [Alfred 4](https://www.alfredapp.com/)
- **Terminal**: [Alacritty](https://github.com/alacritty/alacritty)

### [Windows 10 & WSL2](https://docs.microsoft.com/en-us/windows/wsl/about)

- **Release**: Windows 10 Build 16237+
- **Distro**: [Ubuntu 20.04.2 LTS Build 20210222](https://www.microsoft.com/en-au/p/ubuntu-2004-lts/9n6svws3rx71) & [Pengwin](https://github.com/WhitewaterFoundry/Pengwin)
- **Window Manager**: [PowerToys FancyZones](https://docs.microsoft.com/en-us/windows/powertoys/fancyzones) & [AquaSnap](https://www.nurgo-software.com/products/aquasnap)
- **Package Manager**: [Chocolatey](https://chocolatey.org/)
- **App Launcher**: [PowerToys](https://github.com/microsoft/PowerToys)
- **Terminal**: [Windows Terminal](https://github.com/Microsoft/Terminal)

## Colorscheme

I really like [gruvbox](https://github.com/morhetz/gruvbox). I also really like gruvbox variants such as [gruvbox-material](https://github.com/sainnhe/gruvbox-material). I feel like the gruvbox colours are very friendly to the eyes, and even more so when paired with [redshift](https://github.com/jonls/redshift).

### Gruvbox

- **kitty**: [gruvbox-material-kitty](https://github.com/rsaihe/gruvbox-material-kitty) (dark medium)
- **nvim**: [gruvbox-material](https://github.com/sainnhe/gruvbox-material) (soft)
- **vscodium**: [Gruvbox Dark Medium](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox)
- **bat**: gruvbox-dark
- **Wallpaper**: [Unsplash](https://unsplash.com/photos/Etpd8Le6b8E)

## Quickstart

Install GNU Stow:

```sh
# Install GNU Stow
# Arch Linux:
sudo pacman -S stow

# Mac OSX:
brew install stow

# WSL2 / Ubuntu:
sudo apt-get install -y stow
```

Get / install dotfiles:

```sh
$ git clone --recursive https://github.com/ioalex/dotfiles.git       # Clone this git repository
$ cd ~/dotfiles                                                      # cd to newly cloned directory
$ stow -t ~ stow --verbose --dotfiles                                # Setup GNU Stow
$ make
```

<h3 align="center">💸💸💸</h3>

## Wiki

Please see the [wiki](https://github.com/ioalex/dotfiles/wiki) for more in-depth information.

## Inspiration

- [Kraymer/F-dotfiles](https://github.com/Kraymer/F-dotfiles)
- [LukeSmithxyz/voidrice](https://github.com/LukeSmithxyz/voidrice)
- [maximbaz/dotfiles](https://github.com/maximbaz/dotfiles)
- [dwt1/dotfiles](https://gitlab.com/dwt1/dotfiles)
- [huyvohcmc/dotfiles](https://github.com/huyvohcmc/dotfiles)
- [aeolyus/dotfiles](https://github.com/aeolyus/dotfiles)
- [xero/dotfiles](https://github.com/xero/dotfiles)
- [georgijd/dotfiles](https://github.com/georgijd/dotfiles)

```text
    .--.
   |o_o |
   |:_/ |
  //   \ \
 (|     | )
/'\_   _/`\
\___)=(___/

```
