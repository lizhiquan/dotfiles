return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        require("neotest-golang")({
          go_test_args = {
            "-v",
            "-race",
            "-count=1",
            "-timeout=60s",
            -- "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
          },
          dap_go_enabled = true,
        }),
        -- require("neotest-vim-test")({
        --   ignore_file_types = { "go" },
        -- }),
      },
    },
  },
  {
    "vim-test/vim-test",
    config = function()
      vim.cmd([[
      let test#strategy = 'neovim'
    ]])

      vim.g["test#go#gotest#options"] = "-v -race -count=1"
    end,
  },
}
