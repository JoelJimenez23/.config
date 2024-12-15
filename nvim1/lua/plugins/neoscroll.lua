return {
	'karb94/neoscroll.nvim',
	config = function ()
		local neoscroll_config = require("config.neoscrollc")
		require('neoscroll').setup(neoscroll_config)
	end,
}
