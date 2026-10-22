# nvim

Personal Neovim config (Neovim 0.11+) using [lazy.nvim](https://github.com/folke/lazy.nvim).

## Plugins

- **UI**: tokyonight, snacks.nvim (picker, explorer), which-key
- **Search**: telescope (+ fzf-native), snacks picker
- **Editing**: blink.cmp (completion), nvim-autopairs, conform (formatting)
- **LSP / syntax**: mason, nvim-lspconfig, treesitter
- **Git**: gitsigns, lazygit
- **AI**: copilot.vim, codecompanion

## Install

```bash
git clone git@github.com:ravend3v/nvim.git ~/.config/nvim
nvim
```

Plugins install automatically on first launch.

## Requirements

- Neovim 0.11+, `git`, `make`
- `ripgrep` (live grep), a clipboard tool (`xclip` or `wl-clipboard`)
- A Nerd Font (optional, for icons)

## Key bindings

Leader key help pops up via which-key.

| Key | Action |
|-----|--------|
| `<leader>ff` / `<leader>fg` | Snacks files / live grep |
| `<leader>sl` | Fuzzy find in current buffer |
| `<leader>sf` / `<leader>sg` / `<leader>sb` | Telescope files / grep / buffers |
| `<leader>?` | Buffer-local keymaps |
| `Shift+arrows` | Start visual selection |
| `Ctrl+C` (visual) | Copy to system clipboard |
