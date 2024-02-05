-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 's',     api.node.open.vertical,                  opts('Help'))
end

require'nvim-tree'.setup {
  on_attach = my_on_attach,
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  hijack_directories  = {
      enable = true,
      auto_open = true,
  },
  diagnostics = {
      enable = false,
      icons = {
        hint = "",
        info = "",
        warning = "",
        error = "",
      }
  },
  update_focused_file = {
      enable      = false,
      update_cwd  = true,
      ignore_list = {}
  },
  system_open = {
      cmd  = nil,
      args = {}
  },
  filters = {
      dotfiles = false,
      custom = {}
  },
  git = {
      enable = true,
      ignore = true,
      timeout = 500,
  },
  view = {
      width = 30,
      side = 'left',
      number = false,
      relativenumber = false,
      signcolumn = "yes"
  },
  trash = {
      cmd = "trash",
      require_confirm = true
  }
}


vim.api.nvim_set_keymap('n', '<F6>', ':NvimTreeToggle<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<F5>', ':NvimTreeFindFile<CR>', {noremap=true})
