-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- better up/down movement
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { silent = true, expr = true })
vim.keymap.set("n", "<Down>", "v:count == 0 ? 'gj' : 'j'", { silent = true, expr = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { silent = true, expr = true })
vim.keymap.set("n", "<Up>", "v:count == 0 ? 'gk' : 'k'", { silent = true, expr = true })

-- buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer", silent = true })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer", silent = true })

-- window movement using <ctrl-hjkl>
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", silent = true, remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", silent = true, remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", silent = true, remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", silent = true, remap = true })

-- move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up", silent = true })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move line down", silent = true })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move line up", silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })

-- clear search with <esc>
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch", silent = true })

-- better intenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left", silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right", silent = true })

-- windows
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Close window", silent = true, remap = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window horizontally", silent = true, remap = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window vertically", silent = true, remap = true })
