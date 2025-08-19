return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		DEFAULT_OPTIONS = {
			RGB = true, -- #RGB hex codes
			RRGGBB = true, -- #RRGGBB hex codes
			names = true, -- "Name" codes like Blue
			RRGGBBAA = true, -- #RRGGBBAA hex codes
			rgb_fn = true, -- CSS rgb() and rgba() functions
			hsl_fn = true, -- CSS hsl() and hsla() functions
			css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			mode = "background", -- Set the display mode.
		}

		require("colorizer").setup({
			css = DEFAULT_OPTIONS,
			javascript = DEFAULT_OPTIONS,
			typescript = DEFAULT_OPTIONS,
			javascriptreact = DEFAULT_OPTIONS,
			typescriptreact = DEFAULT_OPTIONS,
			html = {
				mode = "foreground",
			},
		})
	end,
}
