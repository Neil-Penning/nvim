


vim.keymap.set("n", "<leader>L", ":w | so %<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)



-- Obsidian
vim.keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>")
vim.keymap.set("n", "<leader>ot", ":ObsidianTags<CR>")
vim.keymap.set("n", "<leader>oq", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>oo", ":ObsidianToday<CR>")

vim.keymap.set("n", "L", ":bn<CR>")
vim.keymap.set("n", "H", ":bn<CR>")

-- Packer
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")

-- Precognition
vim.keymap.set("n", "<leader>pt", ":Precognition toggle<CR>")
--[[
-- surround
-- tmux + neovim bindings
-- 
--]]

-- vim.keymap.set("n", "<leader>o_", ":ObsidianBacklinks<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianCheck<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianDailies<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianDebug<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianExtractNote<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianFollowLink<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianLink<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianLinkNew<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianLinks<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianNew<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianOpen<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianPasteImg<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianRename<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianSearch<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianTemplate<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianToggleCheckbox<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianTomorrow<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianYesterday<CR>")
-- vim.keymap.set("n", "<leader>o_", ":ObsidianBacklinks<CR>")
--

-- Default harpoon from https://github.com/ThePrimeagen/harpoon/tree/harpoon2
local harpoon = require("harpoon")
harpoon:setup()
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>ha", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)


-- LSP
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)



-- Misc
-- Function to generate the filename

-- note-weekly
vim.keymap.set('n', '<leader>nw',function() vim.cmd('edit ' .. os.date("%Y_%V.md")) end)
-- note-yearly
vim.keymap.set('n', '<leader>ny',function() vim.cmd('edit ' .. os.date("%Y.md")) end)

