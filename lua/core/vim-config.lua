----- Vim config
vim.cmd("syntax on")
-- vim.cmd("set incsearch")
vim.cmd("set encoding=UTF-8")
vim.cmd("set rnu ")
vim.cmd("set nu ")
vim.cmd("set smarttab")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.cmd("set wrap")
vim.cmd("set smartcase")
vim.cmd("set showbreak=+++")
vim.cmd("nnoremap <C-u> <C-u>zz")
vim.cmd("nnoremap <C-d> <C-d>zz")
vim.cmd("nnoremap n nzz")
vim.cmd("nnoremap N Nzz")
vim.cmd("set termguicolors")

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.keymap.set("n", "<leader>tn", ":tabnew %<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

vim.opt.scrolloff = 8
vim.opt.incsearch = true
