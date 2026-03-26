# Neovim Configuration

A modern Neovim setup built with `lazy.nvim`, focused on fast startup, sensible defaults, and a clean coding workflow.

This config includes:
- LSP (via `nvim-lspconfig` + Mason-managed tools)
- Formatting on save (`conform.nvim`)
- Fuzzy finding and file explorer (`snacks.nvim`)
- Completion (`nvim-cmp`)
- Tree-sitter highlighting and parsing

---

## Requirements

### Core
- **Neovim 0.12 nightly or newer**
- `git` (2.19+ recommended)
- `curl`
- `tar`
- C compiler (`clang` or `gcc`) for parser builds

### Recommended
- [Nerd Font](https://www.nerdfonts.com/) for icons
- `tree-sitter-cli` (recommended for parser tooling)

### Optional language toolchains
Depending on what you code in:
- `npm` and `node` (for many JS/TS-based language servers)
- `python` and `pip` (for Python tooling)

---

## Installation

```bash
# 1) Backup existing config (optional but recommended)
mv ~/.config/nvim ~/.config/nvim.bak

# 2) Clone this config
git clone git@github.com:onlychxn120/nvim.git ~/.config/nvim

# 3) Start Neovim
nvim
```

On first launch, `lazy.nvim` installs plugins automatically.

---

## First Run Checklist

Run these commands inside Neovim after installation:

```vim
:Lazy
:checkhealth
:Mason
:TSUpdate
```

What they do:
- `:Lazy` confirms plugin install state
- `:checkhealth` checks runtime and tooling issues
- `:Mason` opens Mason UI for language tooling
- `:TSUpdate` updates Tree-sitter parsers

---

## LSP Setup (Mason)

This config is pre-wired for these servers and tools:

- `lua_ls`
- `basedpyright`
- `ruff`
- `clangd`
- `tailwindcss`

Install them with Mason:

```vim
:MasonInstall lua_ls basedpyright ruff clangd tailwindcss-language-server
```

Or install one by one:

```vim
:MasonInstall lua_ls
:MasonInstall basedpyright
:MasonInstall ruff
:MasonInstall clangd
:MasonInstall tailwindcss-language-server
```

Check installed tools and active clients:

```vim
:Mason
:LspInfo
```

---

## Formatting

Formatting is handled by `conform.nvim` and runs on save.

Manual format:
- `<leader>mp`

Configured formatters include:
- Lua: `stylua`
- Python: `ruff` (fix + format)
- Go: `goimports`, `gofmt`
- C/C++: `clang-format`
- JS/TS/CSS/HTML: `prettierd`

---

## Useful Keymaps

Leader key: `Space`

- `<C-h/j/k/l>` move between windows
- `<leader>e` open file explorer
- `<leader>ff` find files
- `<leader>/` grep/project search
- `<leader>fb` list buffers
- `<leader>w` save file
- `<leader>q` quit
- `<leader>h` clear search highlight
- `<leader>mp` format file
- `K` LSP hover
- `gd` go to definition
- `gr` references
- `<leader>td` toggle diagnostics

---

## Project Structure

```text
.
├── init.lua
├── lazy-lock.json
└── lua/conf/
    ├── init.lua
    ├── options.lua
    ├── keymap.lua
    ├── lazy_init.lua
    └── plugins/
        ├── lsp.lua
        ├── conform.lua
        ├── treesitter.lua
        └── ...
```

Main flow:
- `init.lua` loads `lua/conf/init.lua`
- `lua/conf/init.lua` loads options, keymaps, and lazy bootstrap
- `lua/conf/plugins/*.lua` contains plugin specs and configuration

---

## Troubleshooting

### LSP not attaching
- Run `:LspInfo`
- Run `:checkhealth vim.lsp`
- Ensure the server is installed in `:Mason`

### Tree-sitter parser errors
- Run `:TSUpdate`
- Confirm `curl`, `tar`, and a C compiler are available

### Missing icons
- Install and enable a Nerd Font in your terminal

### Plugin install issues
- Open `:Lazy` and check failed plugins
- Re-run `:checkhealth` for missing dependencies

---

## Notes

- Plugin versions are pinned in `lazy-lock.json`
- Plugin configs live in `lua/conf/plugins/`
- This config targets Neovim nightly-era APIs (`0.12+`)
