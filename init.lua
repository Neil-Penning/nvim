require("np")
require("np.remap")
require("plugins")
require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "markdown_inline", "java", "python", "rust", "lua" },
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
vim.opt.tabstop = 4

vim.opt.list = true
-- todo - :set paste also runs :set list!
vim.cmd("set listchars=tab:!·,trail:·,eol:¬,space:·")

