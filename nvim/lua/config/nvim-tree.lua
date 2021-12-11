require'nvim-tree'.setup {}


vim.api.nvim_set_keymap('n', '<F6>', ':NvimTreeFocus<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<F5>', ':NvimTreeFindFile<CR>', {noremap=true})
