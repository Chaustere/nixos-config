-- Setting colorscheme
require("catppuccin").setup({
    integrations = {
        blink_cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
		overseer = true,
		render_markdown = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
				ok = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
				ok = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
    },
	transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"
require("bufferline").setup({
	highlights = require("catppuccin.groups.integrations.bufferline").get()
})

