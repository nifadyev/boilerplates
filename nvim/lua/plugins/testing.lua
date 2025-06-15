return {
  {
    { "nvim-neotest/nvim-nio", lazy = true },
    { "nvim-lua/plenary.nvim", lazy = true },
    { "antoinemadec/FixCursorHold.nvim", lazy = true },
    "nvim-treesitter/nvim-treesitter",
    { "nvim-neotest/neotest-python", lazy = true },
  },
  {
    "nvim-neotest/neotest",
    lazy = true,
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            dap = {
              justMyCode = false,
              console = "integratedTerminal",
              command = "python",
              args = { "-m", "debugpy.adapter" },
            },
            args = { "--log-level", "DEBUG", "--quiet" },
            runner = "pytest",
            python = ".venv/bin/python",
          })
        }
      })
    end,
  }
}
