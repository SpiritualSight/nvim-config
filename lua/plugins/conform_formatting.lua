return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  init = function()
    if vim.text and not vim.text.diff and vim.diff then
      vim.text.diff = vim.diff
    end
  end,
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters = {
      google_java_format = {
        command = "java",
        args = {
          "-jar",
          "/root/google-java-format.jar",
          "-", -- read from stdin
        },
        stdin = true,
      },
    },
    formatters_by_ft = {
      java = { "google_java_format" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      c = { "clang-format" },
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  },
}
