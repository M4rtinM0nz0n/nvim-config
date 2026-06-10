# E-Vim

A personalized Neovim configuration built on [lazy.nvim](https://github.com/folke/lazy.nvim), focused on Python, web development (HTML/CSS/JS), and ergonomic editing.

![Colorscheme](https://img.shields.io/badge/colorscheme-rose--pine--moon-blueviolet) ![Neovim](https://img.shields.io/badge/Neovim-0.10+-green)

## Requirements

- **Neovim** >= 0.10
- **Git** (for lazy.nvim bootstrapping)
- **make** (for telescope-fzf-native)
- **Nerd Font** (required — see below)
- **fzf** (optional, for `:FZF` integration)

### Nerd Fonts

> [!IMPORTANT]
> Install a Nerd Font for icons and proper rendering.

#### Debian / Ubuntu

```bash
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip && fc-cache -fv
```

#### Fedora

```bash
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
unzip FiraCode.zip && fc-cache -fv
```

#### Arch

```bash
sudo pacman -S nerd-fonts-fira-code
```

#### From Source

```bash
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts && ./install.sh FiraCode
```

## The Vim Way

> [!NOTE]
> Arrow keys are disabled in normal mode — you'll be prompted to use `h/j/k/l` instead.
> The mouse is also disabled by default. To re-enable either, edit the relevant lines in `init.lua`.

## Dashboard

On launch you're greeted with an [alpha-nvim](https://github.com/goolord/alpha-nvim) dashboard:

| Key | Action | Description |
| --- | --- | --- |
| `a` | Add File | Open a new buffer and enter insert mode |
| `f` | Find Files | Open Telescope file finder |
| `d` | Display Tree | Toggle Neo-tree |
| `n` | Nvim Config | Browse Neovim config files |
| `p` | Projects | Open `~/Desktop/Projects/` picker (configurable in `init.lua`) |
| `q` | Quit | Exit Neovim |

## Keymaps

### General

| Key | Mode | Action |
| --- | --- | --- |
| `<Space>` | Normal | **Leader key** |
| `<Esc>` | Normal | Clear search highlight |
| `K` | Normal | LSP hover info |
| `gd` | Normal | Go to definition |
| `<leader>i` | Normal | Insert single character at cursor |
| `jj` / `kk` / `jk` / `kj` | Insert | Escape to normal mode |
| `<C-h/j/k/l>` | Normal | Navigate between windows |

### Diagnostics

| Key | Action |
| --- | --- |
| `<leader>qq` | Open quickfix diagnostic list |
| `<leader>qc` | Open floating diagnostic for current line |

### LSP

| Key | Action |
| --- | --- |
| `grn` | Rename symbol |
| `gra` | Code action |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grd` | Go to definition |
| `grD` | Go to declaration |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `grt` | Go to type definition |
| `<leader>th` | Toggle inlay hints |

### Telescope

| Key | Action |
| --- | --- |
| `<leader>sf` | Find Files |
| `<leader>sg` | Live Grep |
| `<leader>sw` | Find current Word |
| `<leader>sd` | Find Diagnostics |
| `<leader>sr` | Resume last picker |
| `<leader>so` | Find Old files |
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>s/` | Live grep in open files |
| `<leader>sn` | Search Neovim config files |

### Neo-tree

| Key | Action |
| --- | --- |
| `<leader>st` | Toggle Neo-tree file browser |
| `<leader>nb` | Toggle Neo-tree buffers |
| `<leader>ng` | Toggle Neo-tree git status |

### UndoTree

| Key | Action |
| --- | --- |
| `<leader>ut`t | Toggle and focus UndoTree |

### Terminal (toggleterm)

| Key | Mode | Action |
| --- | --- | --- |
| `<C-\>` | Normal/Insert | Toggle terminal |
| `<leader>tt` | Normal | Toggle terminal |

### Jupyter Integration

| Key | Mode | Action |
| --- | --- | --- |
| `<leader>jj` | Normal | Open/close Jupyter console |
| `<leader>jh` | Normal | Copy pandas helpers to register |
| `<leader>jn` | Normal | Insert `# %%` cell divider |
| `<leader>jc` | Normal | Send current cell to Jupyter |
| `<leader>jl` | Normal | Send current line to Jupyter |
| `<leader>jf` | Normal | Send entire file to Jupyter |
| `<leader>js` | Visual | Send selection to Jupyter |
| `<leader>jk` | Normal | Restart Jupyter kernel |

### Debugging (nvim-dap)

| Key | Action |
| --- | --- |
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue / start |
| `<leader>do` | Step over |
| `<leader>di` | Step into |
| `<leader>dO` | Step out |
| `<leader>dt` | Toggle DAP UI |

### Testing (neotest)

| Key | Action |
| --- | --- |
| `<leader>tr` | Run nearest test |
| `<leader>tf` | Run current file tests |
| `<leader>ts` | Toggle test summary |
| `<leader>to` | Open test output |

### Formatting (conform.nvim)

| Key | Action |
| --- | --- |
| `<leader>f` | Format buffer (async, LSP fallback) |

Auto-format on save is enabled (except for C/C++).

### Git

| Key | Action |
| --- | --- |
| `<leader>ngs` | Open Neogit status |

### Virtual Environment (Python)

| Key | Action |
| --- | --- |
| `<leader>vs` | Select virtual environment |
| `<leader>vc` | Re-use last virtual environment |

### HTML Helpers

| Key | Mode | Action |
| --- | --- | --- |
| `<C-c>` | Insert | Insert `class=""` and position cursor inside quotes |
| `<leader>tac` | Normal | Add `class=""` after tag |

### JavaScript Helpers

| Key | Mode | Action |
| --- | --- | --- |
| `<C-c>` then `af` | Insert | Expand to `const arrow = () => {}` |
| `<leader>caf` | Normal | Insert `const arrow = () => {}` |

## Plugins

| Plugin | Purpose |
| --- | --- |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme (rose-pine-moon) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard |
| [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [telescope-fzf-native](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | FZF sorter for Telescope |
| [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) | UI select backend |
| [telescope-file-browser](https://github.com/nvim-telescope/telescope-file-browser.nvim) | File browser extension |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Pre-built snippets |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/formatter installer |
| [mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim) | Mason-LSP bridge |
| [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto-install tools |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress display |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Auto-formatting |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug Adapter Protocol |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP UI |
| [nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python) | Python DAP adapter |
| [neotest](https://github.com/nvim-neotest/neotest) | Test runner framework |
| [neotest-python](https://github.com/nvim-neotest/neotest-python) | Python test adapter (pytest) |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | Text objects, surrounds, pairs, statusline |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODO/FIXME/etc in comments |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indent |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Textobject selections |
| [treesitter-playground](https://github.com/nvim-treesitter/playground) | Inspect treesitter captures |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git gutter signs |
| [neogit](https://github.com/NeogitOrg/neogit) | Git interface |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding popup |
| [noice.nvim](https://github.com/folke/noice.nvim) | Better cmdline/notifications |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Small QoL utilities |
| [nvim-cursorline](https://github.com/ya2s/nvim-cursorline) | Cursor line highlighting |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Lua dev environment |
| [guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim) | Auto-detect indentation |
| [undotree](https://github.com/mbbill/undotree) | Undo history visualizer |
| [marks.nvim](https://github.com/chentoast/marks.nvim) | Mark management & signs |
| [vim-slime](https://github.com/jpalardy/vim-slime) | Send code to REPL |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal manager |
| [jupytext.nvim](https://github.com/GCBallesteros/jupytext.nvim) | Jupyter notebook editing |
| [cord.nvim](https://github.com/vyfor/cord.nvim) | Discord rich presence |
| [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) | Python venv picker |
| [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) | Vim practice game |

## LSP Servers

Configured via Mason with auto-install:

- **html**, **cssls**, **emmet_ls** — Web development
- **intelephense** — PHP
- **basedpyright** — Python (strict type checking)
- **lua_ls** — Lua (Neovim config editing)

Additional tools auto-installed: `typescript-language-server`, `prettier`, `eslint`, `ruff`, `debugpy`

## Formatting

- **Python**: `ruff_format` + `ruff_organize_imports` on save
- **Lua**: stylua (currently disabled)
- Other filetypes fall back to LSP formatting
- Manual format: `<leader>f`

## Custom Snippets

Python snippets are in `snippets/python.json`:

| Prefix | Expansion |
| --- | --- |
| `see` | `see(df)` — preview DataFrame |
| `pdh` | `df.head(10)` |
| `pdi` | `df.info()` |
| `pdd` | `df.describe()` |
| `pdrc` | `pd.read_csv('file.csv')` |
| `pdgb` | DataFrame groupby with aggregation |
| `pdmerge` | `pd.merge(left, right, ...)` |
| `pdplot` | `df.plot(kind='line', ...)` |

## Transparent Background

The config sets a transparent background for multiple highlight groups (Normal, Float, NeoTree, Telescope, WhichKey, etc.), making it suitable for transparent terminal emulators.

## Architecture

```
~/.config/nvim/
├── init.lua                # Main entry point (options, keymaps, lazy setup)
├── lua/
│   ├── colors/
│   │   └── liebe.lua       # Custom "Liebe" colorscheme (unused, rose-pine active)
│   ├── custom/
│   │   └── plugins/
│   │       └── init.lua    # Empty plugin override slot
│   └── plugins/
│       └── telescope.lua   # Telescope extension loader
├── plugins/                # Empty (all plugins in init.lua)
├── snippets/
│   ├── package.json
│   └── python.json         # Custom Python snippets
└── .stylua.toml            # StyLua config
```