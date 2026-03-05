return {
  {
    "dundalek/lazy-lsp.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
      "saghen/blink.cmp",
    },
    config = function()
      local lsp_zero = require("lsp-zero")

      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({
          buffer = bufnr,
          preserve_mappings = false
        })
      end)

      local blink_capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lazy-lsp").setup {

      use_vim_lsp_config = true,
      default_config = {
        capabilities = blink_capabilities,
      }
    }
    end,
  }
}
