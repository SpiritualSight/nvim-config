return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      -- nvim 0.11+ API: nvim-lspconfig only ships the `lsp/<name>.lua` defaults,
      -- these calls layer our overrides on top and start the servers.
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            completion = { callSnippet = "Replace" }
          }
        }
      })

      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index" },
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
      })

      vim.lsp.config("tailwindcss", {
        filetypes = {
          "html", "css", "scss",
          "javascript", "javascriptreact",
          "typescript", "typescriptreact",
          "vue", "svelte",
        },
        init_options = {
          userLanguages = {
            eelixir = "html",
            eruby = "html",
            heex = "html",
          }
        }
      })

      vim.lsp.enable({ "lua_ls", "ts_ls", "clangd", "tailwindcss", "gopls" })
    end
  }
}
