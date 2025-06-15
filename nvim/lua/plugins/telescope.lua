return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
            layout_strategy = 'vertical',
        },
        file_ignore_patterns = { ".venv", "venv" },
      })
      -- local builtin = require("telescope.builtin")
      -- require("telescope").load_extension("ui-select")
    end,
  },
}
