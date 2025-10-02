local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("core.vim-config")
require("lazy").setup("plugins")

vim.cmd("set background=dark")

vim.cmd([[colorscheme gruvbox-material]])

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none"})
-- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none"})
