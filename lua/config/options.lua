local opt = vim.opt

opt.number = true
opt.relativenumber = false

opt.cursorline = true
opt.signcolumn = "yes"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.smartindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

opt.incsearch = true
opt.hlsearch = false

opt.wrap = false
opt.linebreak = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.splitbelow = true
opt.splitright = true

opt.termguicolors = true

opt.updatetime = 250
opt.timeoutlen = 400

opt.undofile = true
opt.swapfile = false
opt.backup = false

opt.writebackup = false

opt.hidden = true

opt.confirm = true

opt.mouse = "a"

-- Shift+arrows start Visual mode; unshifted movement ends it
opt.keymodel = { "startsel", "stopsel" }
opt.selectmode = ""

opt.clipboard = "unnamedplus"

opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}

opt.pumheight = 10

opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "▾",
  foldclose = "▸",
  foldsep = " ",
}

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99
opt.foldlevelstart = 99

-- Large files / repositories
opt.redrawtime = 10000
opt.maxmempattern = 20000

-- Faster shell commands
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
