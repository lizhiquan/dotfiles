return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({
      cursor_scrolls_alone = false,
    })
  end,
}
