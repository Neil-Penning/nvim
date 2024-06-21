-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'savq/melange'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use({
		"epwalsh/obsidian.nvim",
		tag = "*",  -- recommended, use latest release instead of latest commit
		requires = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		config = function()
			require("obsidian").setup({
				workspaces = {
					{
						name = "personal",
						path = "~/vaults/personal",
					},
					{
						name = "work",
						path = "~/vaults/work",
					},
					{
						name = "site",
						path = "~/vaults/site",
					},
					{
						name = "tlaplus",
						path = "~/vaults/tlaplus",
					},
					{
						name = "exercise",
						path = "~/vaults/exercise",
					},
					{
						name = "quine",
						path = "~/vaults/quine",
					},
					{
						name = "outlier",
						path = "~/vaults/outlier",
					},
				},

				-- see below for full list of options 👇
			})
		end,
	})

end)
