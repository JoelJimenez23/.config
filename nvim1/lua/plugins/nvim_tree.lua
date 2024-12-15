return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function ()
      local nvim_tree_config = require("config.nvim_treec")
      require("nvim-tree").setup(nvim_tree_config)
    end,
}