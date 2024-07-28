require('settings')
require('plugins')
require('keybinds')


require('onedark').setup {
	style = 'darker',
	colors = {
		black ="#000000",
		dark = "#000000"
	}
}
require('onedark').load()

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

--require('fluoromachine')
require('colorizer').setup()


require('nvim-treesitter').setup {
	auto_install = true,

   ensure_installed = {
      "lua",
      "javascript",
      "python",
      "cmake",
      "c",
      "cpp",
      "bash"
   },
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	indent = {
		enable = true,
	}
}

require('lualine').setup{
 options = {
	theme = "onedark",
 }
}


require("mason").setup()
require("mason-lspconfig").setup{
 ensure_installed = {"clangd","pyright","lua_ls","eslint"},
}
require("lspconfig").clangd.setup{}
require("lspconfig").pyright.setup{}
require("lspconfig").lua_ls.setup{}
require("lspconfig").eslint.setup{}



require("transparent").setup({ -- Optional, you don't have to run setup.
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {
	 "NormalFloat",
	 "NvimTreeNormal"
	}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})


require("tmux").setup{}
