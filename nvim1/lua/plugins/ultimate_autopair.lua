return {
  {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    lazy = false,
    opts={
    },
    config = function ()
      require("ultimate-autopair").setup()
    end,
  }
}