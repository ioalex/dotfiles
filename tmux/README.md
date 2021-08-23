# tmux

```text
~
└── 📂 .config/tmux
    ├── 📂 plugins/*                 Plugins managed by tpm
    ├── ⚙️ tmux.conf                 tmux config.
    └── 📄 tpm.sh                    tpm installer

```

[`tmux`](https://github.com/tmux/tmux) is a terminal multiplexer; it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.

This package installs sane defaults for `tmux` as well as plugins that are managed by [Tmux Plugin Manager (`tpm`)](https://github.com/tmux-plugins/tpm).

## Plugins

A list of plugins used in this configuration.

### General

- [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
- [tmux-open](https://github.com/tmux-plugins/tmux-open)
- [extrakto](https://github.com/laktak/extrakto)
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
