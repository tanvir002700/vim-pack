require("bufferline").setup{
  options = {
    numbers = function(opts)
      return string.format('%s·%s', opts.raise(opts.ordinal), opts.lower(opts.id))
    end,
    indicator_icon = '',
    offsets = {
        {
            filetype = "NERDTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }
    }
  }
}

vim.api.nvim_set_keymap('n', '<Leader>e', ':BufferLineCycleNext<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<Leader>w', ':BufferLineCyclePrev<CR>', {silent = true})
