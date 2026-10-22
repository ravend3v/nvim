local map = vim.keymap.set

local function opts(desc)
  return {
    desc = desc,
    silent = true,
  }
end

-- Save / quit
map("n", "<leader>w", "<cmd>write<cr>", opts("Save"))
map("n", "<leader>q", "<cmd>quit<cr>", opts("Quit"))
map("n", "<leader>Q", "<cmd>qa!<cr>", opts("Force quit"))

-- Better navigation
map("n", "<C-h>", "<C-w>h", opts("Move left"))
map("n", "<C-j>", "<C-w>j", opts("Move down"))
map("n", "<C-k>", "<C-w>k", opts("Move up"))
map("n", "<C-l>", "<C-w>l", opts("Move right"))

-- Resize
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts("Increase height"))
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts("Decrease height"))
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts("Decrease width"))
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts("Increase width"))

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv", opts("Move selection down"))
map("v", "K", ":m '<-2<CR>gv=gv", opts("Move selection up"))

-- Keep search result centered
map("n", "n", "nzzzv", opts("Next search result"))
map("n", "N", "Nzzzv", opts("Previous search result"))

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", opts("Clear search"))

-- Terminal
map("t", "<Esc><Esc>", "<C-\\><C-n>", opts("Exit terminal mode"))

-- Diagnostics
map("n", "<leader>xx", vim.diagnostic.open_float, opts("Line diagnostics"))
map("n", "<leader>xq", vim.diagnostic.setloclist, opts("Diagnostics list"))
map("n", "[d", vim.diagnostic.goto_prev, opts("Previous diagnostic"))
map("n", "]d", vim.diagnostic.goto_next, opts("Next diagnostic"))

-- LSP
map("n", "gd", vim.lsp.buf.definition, opts("Go to definition"))
map("n", "gD", vim.lsp.buf.declaration, opts("Go to declaration"))
map("n", "gr", vim.lsp.buf.references, opts("References"))
map("n", "gi", vim.lsp.buf.implementation, opts("Implementation"))
map("n", "K", vim.lsp.buf.hover, opts("Hover"))
map("n", "<leader>rn", vim.lsp.buf.rename, opts("Rename"))
map("n", "<leader>ca", vim.lsp.buf.code_action, opts("Code action"))

-- Format
map("n", "<leader>f", function()
  require("conform").format({
    async = true,
    lsp_format = "fallback",
  })
end, opts("Format"))

-- Quick access to project root
map("n", "<leader>cd", function()
  vim.cmd("cd " .. vim.fn.getcwd())
end, opts("CD"))

