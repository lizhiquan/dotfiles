return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      cursor_scrolls_alone = false,
      mappings = {
        -- "<C-u>",
        -- "<C-d>",
        "<C-b>",
        "<C-f>",
        "<C-y>",
        "<C-e>",
        "zt",
        "zz",
        "zb",
      },
    })
  end,
}
