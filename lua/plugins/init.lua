
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'savq/melange'
    -- use "Myzel394/easytables.nvim"
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.6',
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
    })
    -- Installed 2024-06-21
    use {
        'tris203/precognition.nvim' ,
        config = function()
            require("precognition").setup()
        end,
        run = ':Precognition hide' -- hide by default
    }
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} },
    }
    use {
        'Bekaboo/dropbar.nvim',
        config = function() require("dropbar").setup() end
    }
    -- Installed 2024-06-23
    use 'tlaplus-community/tlaplus-nvim-plugin'
    --
    -- Installed 2024-07-10
    use 'Neovim/nvim-lspconfig'
    use 'tummetott/unimpaired.nvim'

    -- Installed 2024-07-15
    use 'mfussenegger/nvim-dap'

    --[[ Untested Plugins
    use 'jvgrootveld/telescope-zoxide' -- use zoxide within neovim
    use 'ms-jpq/coq_nvim' -- Completion
    -- use 'luukvbaal/nnn.nvim' -- use nnn within neovim -- gives error on startup
    -- use 'Aaronik/GPTModels.nvim'
    -- use 'norcalli/snippets.nvim'
    -- use 'gennaro-tedesco/nvim-peekup'
    use 'uga-rosa/ccc.nvim'
    use 'NTBBloodbath/galaxyline.nvim'
    -- use 'doctorfree/cheatsheet.nvim' -- Picker for Helwer's nvim plugin -- broken?
    use 'chrisgrieser/nvim-origami' --better folds
    -- use 'bfredl/nvim-ipy' -- Interface with ipython/jupyter
    -- LhKipp/nvim-nu -- nushell support

    use 'echasnovski/mini.nvim'
    --]]


end)
--[[
Broken because coc needs nodejs
use 'neoclide/coc.nvim'
use 'markmap/coc-markmap'
--]]
