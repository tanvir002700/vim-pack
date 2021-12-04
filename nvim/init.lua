vim.g.vim_bootstrap_editor = 'nvim'
vim.g.mapleader = ','
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.ruler = true
vim.opt.number = true
vim.opt.autoread = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.cursorline = true
vim.opt.complete = '.,w,b,u'
vim.opt.clipboard = 'unnamedplus'
vim.opt.hidden = true
vim.opt.undofile = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = '80'
vim.opt.shiftround = true
vim.opt.completeopt = 'longest'
vim.opt.showbreak = '↪'
vim.opt.wildignore = {'*/cache/*', '*/tmp/*'}
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.mouse = 'a'
vim.opt.mousemodel = 'popup'
vim.opt.encoding = 'UTF-8'


require('plugins')
require('visual')
require('keybindings')
require('file_type')
require('macros')

vim.cmd [[
    command Bd bp|vsp|bn|bd
]]
