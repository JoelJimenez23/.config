return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    local themery_config = require("config.themeryc")
    require("themery").setup(themery_config)
  end
}