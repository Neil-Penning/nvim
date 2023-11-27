vim.cmd.set("rnu")
vim.cmd.set("nu")
vim.cmd.set("wrap!")
-- vim.cmd.set("tabpagemax=15")
vim.cmd.set("wildmenu")
-- vim.cmd.set("t_Co=256")

-- keep 3 lines at top and bottom
vim.cmd.set("scrolloff=3")

-- display column number
vim.cmd.set("ruler")
vim.cmd.set("conceallevel=2")

vim.cmd.set("list")
vim.cmd.set("listchars=tab:!·,trail:·,eol:¬,space:·")
--[[
-- An attempt at turning listchars off contextually
vim.cmd([ [
  autocmd InsertEnter * set listchars= nolist
  autocmd InsertLeave * set listchars=tab:!·,trail:·,eol:¬,space:·
] ])
--]]

-- show what is being typed.
vim.cmd.set("showcmd")

--Use spaces everywhere
vim.cmd.set("expandtab")

--use 4 spaces instead of tabs
vim.cmd.set("tabstop=4")
vim.cmd.set("shiftwidth=4")

-- Let vim handle auto indenting
vim.cmd.set("autoindent")

-- Change (Matching parenthesis) highlight color
-- https://stackoverflow.com/questions/10746750/set-vim-bracket-highlighting-colors
-- hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

vim.cmd.set("cursorline") -- highlight current cursor line.

vim.cmd.set("confirm")

-- Highlight search terms as they're typed.
vim.cmd.set("incsearch")
