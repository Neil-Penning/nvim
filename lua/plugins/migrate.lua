return {
	'hrsh7th/nvim-cmp',
	'savq/melange',
	-- use "Myzel394/easytables.nvim"
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
	},
	{'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
	},
	{
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
						name = "deck_hone_loop",
						path = "~/vaults/deck_hone_loop/",
					},
					{
						name = "tlaplus",
						path = "~/vaults/deck_hone_loop/tlaplus/",
					},
					{
						name = "penning_solutions",
						path = "~/Documents/Penning_Solutions/",
					},
					{
						name = "personal",
						path = "~/vaults/deck_hone_loop/personal/",
					},
				},

				-- see below for full list of options 👇
			})
		end,
	},
	{
		'Bekaboo/dropbar.nvim',
		config = function() require("dropbar").setup() end
	},
	'tlaplus-community/tlaplus-nvim-plugin',
	-- Installed 2024-07-10
	'Neovim/nvim-lspconfig',
	'tummetott/unimpaired.nvim',
	-- Installed 2024-07-15
	'mfussenegger/nvim-dap',
}
