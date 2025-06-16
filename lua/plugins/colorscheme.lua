return {
  'bluz71/vim-moonfly-colors',
  name = 'moonfly', -- Plugin name for identification
  lazy = false,     -- Load the colorscheme immediately on startup
  priority = 1000,  -- Ensure the colorscheme loads before other plugins
  config = function()
    -- Set any Moonfly-specific options here
    -- For example, to enable transparent background:
    -- vim.g.moonflyTransparent = true
    -- Apply the colorscheme
    vim.cmd('colorscheme moonfly')
  end,

  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   lazy = false,
  --   config = function()
  --     require("catppuccin").setup({
  --       flavour = "mocha",
  --       background = {
  --         dark = "mocha",
  --       },
  --       transparent_background = true,
  --       show_end_of_buffer = false,
  --       term_colors = true,
  --       dim_inactive = {
  --         enabled = false,
  --         shade = "dark",
  --         percentage = 0.15,
  --       },
  --       no_italic = false,
  --       no_bold = false,
  --       no_underline = false,
  --       styles = {
  --         comments = { "italic" },
  --         conditionals = { "italic" },
  --         loops = {},
  --         functions = {},
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --         operators = {},
  --       },
  --       color_overrides = {},
  --       custom_highlights = {},
  --       default_integrations = true,
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         treesitter = true,
  --         notify = false,
  --         mini = {
  --           enabled = true,
  --           indentscope_color = "",
  --         },
  --       },
  --     })
  --
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
}
