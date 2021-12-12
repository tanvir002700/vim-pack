if vim.env.TERM_PROGRAM == 'tmux' or vim.fn.has('macunix') ~= 1 then
  vim.cmd[[
    set termguicolors
  ]]
end
vim.g.background = 'dark'
vim.cmd("colorscheme solarized8")

vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi clear LineNr
  hi LineNr ctermfg=white ctermbg=none
]]
