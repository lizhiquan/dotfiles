return {
  -- "ray-x/go.nvim",
  -- dependencies = { -- optional packages
  --   "ray-x/guihua.lua",
  --   "neovim/nvim-lspconfig",
  --   "nvim-treesitter/nvim-treesitter",
  -- },
  -- config = function()
  --   require("go").setup({
  --     lsp_inlay_hints = {
  --       enable = false,
  --     },
  --   })
  -- end,
  -- event = { "CmdlineEnter" },
  -- ft = { "go", "gomod" },
  -- build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries

  {
    "fatih/vim-go",
    init = function()
      vim.g.go_metalinter_command = "golangci-lint"
      vim.g.go_metalinter_autosave = 1
    end,
  },
}
