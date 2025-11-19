vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.signcolumn = 'yes'
vim.g.mapleader = " "
vim.o.winborder = "rounded"

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
    { src = 'https://github.com/catppuccin/nvim' },
    { src = 'https://github.com/echasnovski/mini.nvim' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
})

vim.cmd("colorscheme catppuccin-macchiato")

vim.lsp.enable({'clangd', 'lua_ls'})

require('mini.statusline').setup()
require('gitsigns').setup()
require('nvim-tree').setup()

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<C-d>', ':t.<CR>')
vim.keymap.set('i', 'jj', '<ESC>')
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
vim.keymap.set('i', '<S-Tab>', '<C-d>', { remap = false, desc = "Unindent current line" })
vim.keymap.set('v', '<S-Tab>', '<gv', { remap = false, desc = "Unindent selection and reselect" })
vim.keymap.set('v', '<Tab>', '>gv', { remap = false, desc = "Indent selection and reselect" })
