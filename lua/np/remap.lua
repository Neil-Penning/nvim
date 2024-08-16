-- Obsidian
vim.keymap.set("n", "<leader>ow", ":ObsidianWorkspace<CR>")
vim.keymap.set("n", "<leader>ot", ":ObsidianTags<CR>")
vim.keymap.set("n", "<leader>oq", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>oo", ":ObsidianToday<CR>")

vim.keymap.set("n", "L", ":bn<CR>")
vim.keymap.set("n", "H", ":bn<CR>")



local wk = require("which-key")
wk.add({
    { "<leader>f", group = "file" }, -- group
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n" },
    -- { "<leader>fb", function() print("hello") end, desc = "Foobar" },
    -- { "<leader>fn", desc = "New File" },
    -- { "<leader>f1", hidden = true }, -- hide this keymap
    -- { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
    { "<leader>L", ":w | so%<CR>", desc="Source Current file as Lua", mode = "n"},
    -- LSP
    { "gd", function() vim.lsp.buf.definition() end, desc="Goto Definition", mode="n"},
    { "<leader>ny", function() vim.cmd('edit ' .. os.date("%Y.md")) end, mode="n", desc="Edit Yearly Note" },
    { "<leader>nw", function() vim.cmd('edit ' .. os.date("%Y_%V.md")) end, mode="n", desc="Edit Weekly Note" }
})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
