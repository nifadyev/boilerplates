-- dont use now
return {
  {
    { "nvim-neotest/nvim-nio", lazy = true },
    { "nvim-lua/plenary.nvim", lazy = true },
    --"nvim-neotest/neotest-plenary",
    { "antoinemadec/FixCursorHold.nvim", lazy = true },
    "nvim-treesitter/nvim-treesitter",
    { "nvim-neotest/neotest-python", lazy = true },
  },
  {
    "nvim-neotest/neotest",
    --  opts = { adapters = { "neotest-plenary" } },
    lazy = true,
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            -- dap = {
            --   justMyCode = false,
            --   console = "integratedTerminal",
            --   command = "python",
            --   args = { "-m", "debugpy.adapter" },
            -- },
            -- args = { "--log-level", "DEBUG", "--quiet" },
            runner = "pytest",
            -- python = ".venv/bin/python",
            -- python = "/home/pecan/.virtualenvs/simple_company_apm/bin/python",
          })
        }
      })
    -- require make run-test-server and make setup-test-db before
    -- config = function()
   --          2 require("neotest").setup({
   --  3   adapters = {
   --  4     require("neotest-python")({
   --  5       runner = "pytest",
   --  6       env = {
   --  7         POSTGRES_DB = "test_assets",
   --  8         USER_MANAGER_ENABLED = "no",
   --  9         -- This replicates the PYTHONPATH from the Makefile
   -- 10         PYTHONPATH = function()
   -- 11           return vim.fn.getcwd() .. "/src:" .. vim.fn.getcwd()
   -- 12         end,
   -- 13       },
   -- 14       -- This adds the --ff argument from the Makefile
   -- 15       args = { "--ff" },
   -- 16     }),
   -- 17   },
   -- 18 })
      -- })
    end,
  }
}
