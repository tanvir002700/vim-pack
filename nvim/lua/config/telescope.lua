local status, telescope = pcall(require, "telescope")
if (not status) then return end

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}

vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', {noremap=false})
vim.api.nvim_set_keymap('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', {noremap=false})
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', {noremap=false})
vim.api.nvim_set_keymap('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', {noremap=false})
