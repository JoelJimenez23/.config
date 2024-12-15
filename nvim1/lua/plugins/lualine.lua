return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		enable_default_keybindings = false,
		config = function ()
			local lualine_config = require("config.lualinec")
			require("lualine").setup(lualine_config)
		end,
	}
}
  
