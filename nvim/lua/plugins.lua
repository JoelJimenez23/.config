vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup(
	function(use)
		use('wbthomason/packer.nvim')
		use('navarasu/onedark.nvim')
		use {
  			'nvim-tree/nvim-tree.lua',
  			requires = {
    			'nvim-tree/nvim-web-devicons', -- optional
  			},
		}
		use('maxmx03/fluoromachine.nvim')
		use('NvChad/nvim-colorizer.lua')
    use {
        'nvim-treesitter/nvim-treesitter',
     	   run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

		use {
    		'altermo/ultimate-autopair.nvim',
    		event={'InsertEnter','CmdlineEnter'},
    		branch='v0.6', --recomended as each new version will have breaking changes

    		config=function ()
      		  require('ultimate-autopair').setup()
    		end,
		}

		use {
				 'nvim-lualine/lualine.nvim',
				 requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		}

		use {
		 'williamboman/mason.nvim',
		 'williamboman/mason-lspconfig.nvim',
		 'neovim/nvim-lspconfig',
		}

		use {
		 'xiyaowong/transparent.nvim'
		}

		use {
		 "aserowy/tmux.nvim"
		}

		use {
		 "neoclide/coc.nvim",
		 branch = "release"
		}

end)
