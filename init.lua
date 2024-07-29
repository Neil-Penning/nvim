require("np")
require("np.remap")
require("plugins")
require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "markdown_inline", "java", "python", "rust", "lua", "toml" },
  highlight = {
    enable = true,
  },
})
require'lspconfig'.jdtls.setup{}
require('unimpaired').setup {
    default_keymaps = true,
}
vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- Persistent Gutter for lsp errors
vim.opt.signcolumn="yes"
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

