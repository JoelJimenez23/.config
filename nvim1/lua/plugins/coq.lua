return {
  {
    "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
    lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
    dependencies = {
      -- main one
      { "ms-jpq/coq_nvim", branch = "coq" },
  
      -- 9000+ Snippets
      { "ms-jpq/coq.artifacts", branch = "artifacts" },
  
      -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
      -- Need to **configure separately**
      { "ms-jpq/coq.thirdparty", branch = "3p" },
    },
    init = function()
      vim.g.coq_settings = {
        keymap = {
          recommended = false, -- Desactiva los mapeos predeterminados
          jump_to_mark = '',
        },
        auto_start = "shut-up", -- Inicia automáticamente sin mensajes innecesarios
      }
    end,
    config = function()
      -- Aquí puedes configurar tu LSP
      -- Asigna Tab y Shift-Tab para navegar en autocompletado
      vim.api.nvim_set_keymap(
        "i",
        "<Tab>",
        [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
        { expr = true, noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "i",
        "<S-Tab>",
        [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
        { expr = true, noremap = true, silent = true }
      )
    end,
  }
}
