vim.g.NERDTreeWinSize = 25
vim.g.NERDTreeHijackNetrw = false
vim.g.NERDTreeShowHidden = true
vim.g.NERDTreeIgnore = {'^__pycache__$', '^.venv$', '^.git$', '^tags$', '^tag$', '^node_modules$'}

vim.api.nvim_set_keymap('n', '<F6>', ':NERDTreeToggle<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<F5>', ':NERDTreeFind<CR>', {noremap=true})
