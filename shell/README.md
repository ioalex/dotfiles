# shell

```text
~
└── 📂 .config/shell
    ├── 📂 functions/*               Miscellaneous functions
    ├── ⚙️ alias-distro              Linux distro-specific aliases
    ├── ⚙️ alias-os                  OS-specific aliases
    ├── ⚙️ aliasrc                   General aliases
    ├── ⚙️ exports.env               Global environment variables
    ├── ⚙️ path.env                  Sets $PATH
    └── ❔ secrets.env               Global environment variables, not available to the public

```

This package installs shell aliases and functions which are stored in `$HOME/.config/shell`.

I aim to keep my system shell-agnostic, in that I can use the same aliases and functions with different shells. Currently, I only use `bash` and `zsh`.
