vim.cmd[[
  set termguicolors
]]
vim.g.background = 'dark'
vim.cmd("colorscheme solarized8")

vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi clear LineNr
  hi LineNr ctermfg=white ctermbg=none
]]
