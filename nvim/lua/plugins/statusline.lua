return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = { },
        lualine_z = { 'location' }
      },
    })
  end,
}
