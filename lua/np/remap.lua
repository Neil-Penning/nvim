
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)



-- Obsidian
vim.keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>")
vim.keymap.set("n", "<leader>ot", ":ObsidianTags<CR>")
vim.keymap.set("n", "<leader>oq", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>oo", ":ObsidianToday<CR>")

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

