vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.signcolumn = 'yes'
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.api.nvim_create_autocmd("Filetype", {
  pattern = "make",
  callback = function()
    vim.opt_local.expandtab = false 
  end,
})

vim.diagnostic.config({
    virtual_text = true,
})

vim.pack.add({
    { src = 'https://github.com/neovim/nvim-lspconfig' },
})

vim.lsp.enable('clangd')

