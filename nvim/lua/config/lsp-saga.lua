local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga()

vim.api.nvim_set_keymap('n', 'sf', ':Lspsaga lsp_finder<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'sp', ':Lspsaga preview_definition<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'sr', ':Lspsaga rename<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', 'sh', ':Lspsaga hover_doc<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-b>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", {noremap=true, silent=true})
