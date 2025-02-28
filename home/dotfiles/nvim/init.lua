require("config.basic_nvim_conf")
require("config.keymaps")
require("config.lazy")
require("config.colorscheme_catppuccin")
require("config.lsp_conf")
require('overseer').setup()
require("barbecue").setup {
	theme = "catppuccin", -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
}


require("config.evil_lualine")
