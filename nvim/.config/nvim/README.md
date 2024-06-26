# Nary's Configuration for Neovim

## Overview

- Plugins I used:
    - catppuccin (for nvim theme)
    - lualine (command line style in nvim)
    - neo-tree (file explorer)
        - this one is now replaced by tfm with ranger

### Navigating
- telescope
    - find files and live grep
- tfm
    - working with ranger in nvim
- nvim-window-picker
    - navigate through windows

### Terminal

- toggleterm
    - create toggle terminal (float, horizontal, vertical, ...)
- toggleterm-manager (in telescope.lua)
    - manage toggle term terminals
- noice
    - a popup cmd and notice
    - also make the view prettier

### Easy editing
- nvim-surround
    - surround the text with specific characters easier
        
### Coding
- treesitter
    - formatting (and other functions waiting for explore)
- mason (settings in lsp-config file)
    - manage external editor tooling (LSP server, linters, formatters, ...)
- mason-lspconfig (settings in lsp-config file)
    - config mason
- nvim-lspconfig (settings in lsp-config file)
    - config for nvim LSP client
- none-ls (used name null-ls in settings)
    - integret linter to nvim
    - wrap commnad line tool to general LSP

#### autocompletion

> Settings of those are in conpletions.lua file 

- nvim-cmp
    - completion engion for nvim (only for completion)
- luasnip
    - snippers
- cmp.luasnip
    - luasnip snippers for nvim-cmp
- friendly-snippets
    - provide Vscode like snippers
- cmp-nvim-lsp
    - add sources to lsp, so that we can use multiple languages

#### debugger
- nvim-dap
- nvim-dap-ui
    - pretty ui for bebugging

#### For Python
- nvim-dap-python
    - working with nvim-dap
- venv-selector
    - select python venv
    - work with debugger
- iron (exclude for now)
    - can run the selected line or the whole file

> Use toggle term to run one by one, then use toggle-manager to manage those terminal

