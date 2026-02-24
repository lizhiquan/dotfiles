return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte", -- "latte", "frappe", "macchiato", "mocha"
      auto_integrations = true,
      custom_highlights = function(colors)
        return {
          ["@function"] = { italic = true },
          ["@function.call"] = { italic = true },
          -- Neovim >= 0.9 standard treesitter captures for methods
          ["@function.method"] = { italic = true },
          ["@function.method.call"] = { italic = true },
          -- LSP semantic tokens for methods
          ["@lsp.type.method"] = { italic = true },
          ["@lsp.type.function"] = { italic = true },
        }
      end,

      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      dim_inactive = {
        enabled = false,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "bold" },
        keywords = { "bold" },
        functions = { "bold" },
        types = { "bold" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },

  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("rose-pine").setup({})

  --     -- vim.cmd("colorscheme rose-pine")
  --     -- vim.cmd("colorscheme rose-pine-main")
  --     vim.cmd("colorscheme rose-pine-moon")
  --     -- vim.cmd("colorscheme rose-pine-dawn")
  --   end,
  -- },
}
