require("np")
require("np.remap")
require("plugins")
require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "markdown_inline", ... },
  highlight = {
    enable = true,
  },
})
-- Color Scheme
vim.opt.termguicolors = true
vim.opt.conceallevel = 2
vim.opt.wrap = false
vim.cmd.colorscheme 'melange'
vim.opt.expandtab = true
vim.opt.shiftwidth = 4

vim.opt.list = true
vim.cmd("set listchars=tab:!·,trail:·,eol:¬,space:·")

