local opt = vim.opt
local o = vim.o
local g = vim.g

o.laststatus = 3
o.showmode = false

o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number"

o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.linebreak = true

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true

o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

opt.shortmess:append("sI")

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true

o.updatetime = 250

opt.whichwrap:append("<>[]hl")

g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("data") .. "/undodir"

opt.smoothscroll = true

vim.diagnostic.config({
	virtual_text = false,
})

opt.mouse = ""

g.have_nerd_font = true
o.inccommand = "split"
o.scrolloff = 10
o.confirm = true
