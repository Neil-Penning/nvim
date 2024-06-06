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
vim.cmd.colorscheme 'melange'



