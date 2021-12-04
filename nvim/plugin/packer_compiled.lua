-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/anick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/anick/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/anick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/anick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/anick/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["ag.vim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/ag.vim",
    url = "https://github.com/rking/ag.vim"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/apzelos/blamer.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/anick/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["ctrlp.vim"] = {
    config = { "require('config.ctrlp')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/ctrlpvim/ctrlp.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["greplace.vim"] = {
    config = { "require('config.gsearch')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/greplace.vim",
    url = "https://github.com/skwp/greplace.vim"
  },
  ["lsp-colors.nvim"] = {
    config = { "require('config.lsp-color')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "require('config.lsp-kind')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('config.lsp-saga')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  neomake = {
    config = { "require('config.neomake')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/neomake",
    url = "https://github.com/neomake/neomake"
  },
  nerdtree = {
    config = { "require('config.nerdtree')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nvim-autopairs"] = {
    config = { "require('config.autopairs')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "cmp_luasnip", "cmp-nvim-lua", "cmp-path" },
    loaded = true,
    only_config = true
  },
  ["nvim-lsp-installer"] = {
    config = { "require('config.lsp-config')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    config = { "require('config.devicons')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["split-manpage.vim"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/split-manpage.vim",
    url = "https://github.com/ludwig/split-manpage.vim"
  },
  supertab = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/supertab",
    url = "https://github.com/ervandew/supertab"
  },
  ["telescope.nvim"] = {
    config = { "require('config.telescope')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-airline"] = {
    config = { "require('config.airline')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-nerdtree-tabs"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-nerdtree-tabs",
    url = "https://github.com/jistr/vim-nerdtree-tabs"
  },
  ["vim-solarized8"] = {
    config = { "require('config.theme')" },
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/anick/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('config.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.cmp')
time([[Config for nvim-cmp]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
require('config.devicons')
time([[Config for nvim-web-devicons]], false)
-- Config for: vim-solarized8
time([[Config for vim-solarized8]], true)
require('config.theme')
time([[Config for vim-solarized8]], false)
-- Config for: vim-airline
time([[Config for vim-airline]], true)
require('config.airline')
time([[Config for vim-airline]], false)
-- Config for: greplace.vim
time([[Config for greplace.vim]], true)
require('config.gsearch')
time([[Config for greplace.vim]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
require('config.nerdtree')
time([[Config for nerdtree]], false)
-- Config for: neomake
time([[Config for neomake]], true)
require('config.neomake')
time([[Config for neomake]], false)
-- Config for: ctrlp.vim
time([[Config for ctrlp.vim]], true)
require('config.ctrlp')
time([[Config for ctrlp.vim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require('config.lsp-saga')
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
require('config.lsp-config')
time([[Config for nvim-lsp-installer]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
require('config.lsp-kind')
time([[Config for lspkind-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require('config.autopairs')
time([[Config for nvim-autopairs]], false)
-- Config for: lsp-colors.nvim
time([[Config for lsp-colors.nvim]], true)
require('config.lsp-color')
time([[Config for lsp-colors.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-buffer ]]
time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
