# My Neovim Config

A clean Neovim configuration using lazy.nvim for plugin management.

## Features

- LSP support with nvim-lspconfig
- Smart formatting with conform.nvim
- Fuzzy finding with snacks.nvim
- Autocomplete with nvim-cmp
- TreeSitter syntax highlighting
- Auto-save, autopairs, GitHub Copilot

## Requirements

- **Neovim 0.12 nightly** or newer
- Git >= 2.19.0
- tar and curl (for TreeSitter parsers)
- A C compiler (for compiling parsers)
- tree-sitter-cli (for TreeSitter)
- A Nerd Font (for icons)

## Installation

```bash
# Go to config folder
cd ~/.config

# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git@github.com:onlychxn120/nvim.git

# Open Neovim (plugins install automatically)
nvim .
```

## LSP Setup

Language servers are managed via Mason. Install servers with:

```bash
:MasonInstall lua_ls        # Lua
:MasonInstall basedpyright # Python
:MasonInstall ruff          # Python linting
:MasonInstall clangd        # C/C++
:MasonInstall tailwindcss-language-server
```

Supported servers (pre-configured):

- **lua_ls** - Lua development
- **basedpyright** - Python (requires `npm install -g basedpyright`)
- **ruff** - Python linting (requires `pip install ruff`)
- **clangd** - C/C++ (requires `brew install clangd` or similar)
- **tailwindcss-language-server** - CSS frameworks

For a full list of available servers:

```bash
:Mason
```

## Keybindings

| Key          | Action                  |
| ------------ | ----------------------- |
| Space        | Leader key              |
| Ctrl+h/j/k/l | Navigate windows        |
| Space+e      | File explorer           |
| Space+ff     | Find files              |
| Space+fb     | Buffers                 |
| Space+/      | Grep search             |
| Space+mp     | Format file             |
| Space+w      | Save                    |
| Space+q      | Quit                    |
| Space+h      | Clear search highlights |
| Space+td     | Toggle diagnostics      |
| K            | Hover doc               |
| gd           | Go to definition        |
| gr           | References              |

## Plugins

Managed via [lazy.nvim](https://github.com/folke/lazy.nvim). See `lua/conf/plugins/` for individual configs.
