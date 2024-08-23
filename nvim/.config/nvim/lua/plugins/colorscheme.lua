return {
  --   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "catppuccin-latte",
  --     },
  --   },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({})

      -- vim.cmd("colorscheme rose-pine")
      -- vim.cmd("colorscheme rose-pine-main")
      vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
}
