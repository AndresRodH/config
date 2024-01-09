vim.g.mapleder = " "

local opt = vim.opt

opt.clipboard = "unnamedplus" -- copy/paste to system clipboard
opt.confirm = true -- confirm before quitting unsaved file
opt.cursorline = true -- highlight current line
opt.expandtab = false -- use tabs for indentation
opt.list = true -- show whitespace/tabs/...
opt.mouse = "a" -- enable mouse
opt.number = true -- who doesn't like line numbers?
opt.relativenumber = true -- who doesn't like relative line numbers?
opt.scrolloff = 8 -- start scrolling 8 lines before edge of viewport
opt.shiftround = true -- round indent
opt.shiftwidth = 2 -- size of an indent
opt.sidescrolloff = 8 -- start scrolling 8 columns before edge of viewport
opt.splitbelow = true -- put new windows below the current one
opt.splitright = true -- put new windows to the right of the current one
opt.signcolumn = "yes" -- always show sign column
opt.smartcase = true -- ignore case if pattern is all lowercase
opt.smartindent = true -- autoindent new lines
opt.tabstop = 2 -- number of spaces tabs count for
opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.undofile = true -- save undo history
opt.undolevels = 10000 -- maximum number of changes that can be undone
opt.virtualedit = "block" -- allow cursor to move where there is no text in visual block mode
