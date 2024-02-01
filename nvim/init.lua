-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins.lazy')
require('options')
require('remap')
require('misc')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.whichkey')
require('plugins.cmp')
require('plugins.doge')
require('plugins.harpoon')
require('plugins.nvimtree')
require('plugins.lualine')
require('plugins.lazygit')
