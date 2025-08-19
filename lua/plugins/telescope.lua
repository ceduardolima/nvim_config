return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
			vim.keymap.set("n", "<leader>ps", function()
				builtin.grep_string({
					search = vim.fn.input("Grep > "),
				})
			end)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					-- Default configuration for telescope goes here:
					-- config_key = value,
					mappings = {
						i = {
							-- map actions.which_key to <C-h> (default: <C-/>)
							-- actions.which_key shows the mappings for your picker,
							-- e.g. git_{create, delete, ...}_branch for the git_branches picker
							["<C-h>"] = "which_key",
						},
					},
					file_ignore_patterns = { "node_modules" },
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("flutter")

			-- Create an autocommand group for Python files
			vim.api.nvim_create_augroup("FlutterKeymaps", {
				clear = true,
			})

			-- Define keymaps for Flutter files
			vim.api.nvim_create_autocmd("FileType", {
				group = "FlutterKeymaps",
				pattern = "dart",
				callback = function()
					vim.keymap.set("n", "<C-c>", ":Telescope flutter commands<CR>", {})
				end,
			})
		end,
	},
}
