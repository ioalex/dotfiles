<h1 align="center">
    <code>dotfiles 👨‍💻</code>
</h1>

<h4 align="center"><i>Personal dotfiles for Arch Linux.</i></h4>

- [Information](#information)
- [Quickstart](#quickstart)

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
