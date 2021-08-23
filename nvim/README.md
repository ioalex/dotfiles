# nvim

```text
~
└── 📂 .config/nvim/
    ├── 📂 .github/                  GitHub directory
    │   ├── 📂 assets/               README assets
    │   ├── 📂 workflows/            GitHub Actions workflow settings
    │   └── 📄 CODEOWNERS            CODEOWNERS file
    ├── 📂 lua/                      Lua modules
    │   ├── 📂 lsp/                  Neovim LSP / LSP-plugin configuration
    │   ├── 📂 plugins/              Plugin-specific configuration
    │   ├── ⚙️ auto-install.lua      packer.nvim auto-install script
    │   ├── ⚙️ hosts.lua             Manage Neovim program hosts
    │   ├── ⚙️ mappings.lua          Neovim keybindings
    │   ├── ⚙️ options.lua           Neovim settings
    │   ├── ⚙️ plugins.lua           Plugins load file
    │   └── ⚙️ theme.lua             Neovim colourscheme settings
    ├── 📂 plugin/                   packer.nvim plugin compilation
    ├── 📂 spell/                    Neovim spell directory
    ├── 📂 undo/                     Neovim undo directory
    ├── 📄 .gitignore                git ignore file
    ├── 📄 .luacheckrc               luacheck configuration file
    ├── 📄 .markdownlint.json        Markdownlint configuration file
    ├── 📄 .styluaignore             StyLua ignore file
    ├── ⚙️ init.lua                  Neovim Lua initialisation file
    ├── 📄 nvim.todo                 To-do file
    └── 📄 stylua.toml               StyLua configuration file

```

[Neovim](https://neovim.io/) is a Vim-based text editor engineered for extensibility and usability, to encourage new applications and contributions.

This package installs my personal `nvim` configuration, which is written in Lua.

This package makes use of:

- [`luacheck`](https://github.com/mpeterv/luacheck) - a tool for linting and static analysis of Lua code
- [StyLua](https://github.com/johnnymorganz/stylua) - an opinionated Lua code formatter
- [packer.nvim](https://github.com/wbthomason/packer.nvim) - plugin manager for Neovim

## Plugins

For a list of plugins, please see the README within.
