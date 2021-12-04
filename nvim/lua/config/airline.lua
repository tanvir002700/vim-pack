vim.g.airline_theme = 'luna'
vim.g['airline#extensions#tabline#enabled'] = true
vim.g['airline_powerline_fonts'] = true
vim.g['airline#extensions#tabline#buffer_nr_show'] = true
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail'

vim.api.nvim_set_keymap('n', '<Leader>e', ':bnext<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>w', ':bprev<CR>', {silent = true})
