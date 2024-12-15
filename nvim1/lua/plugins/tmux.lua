return {
  {
    'aserowy/tmux.nvim',
    config = function ()
      local tmux_config = require('config.tmuxc')
      require("tmux").setup(tmux_config)
    end,
  }
}
