return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
    lazy = false, -- neo-tree will lazily load itself
	config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Display hidden files
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    })
	end,
}
