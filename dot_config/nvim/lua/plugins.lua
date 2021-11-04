local cmd = vim.cmd
cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq

-- Package Manager
paq {'savq/paq-nvim', opt = true}
-- LSP
paq {'neovim/nvim-lspconfig'}
-- Treesitter
paq {'nvim-treesitter/nvim-treesitter'}
-- File Explorer
paq {'kyazdani42/nvim-web-devicons'}
paq {'kyazdani42/nvim-tree.lua'}
-- Statusline
paq {'hoob3rt/lualine.nvim'}
-- Telescope
paq {'nvim-lua/popup.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}
-- Color theme
paq {'tjdevries/colorbuddy.vim'}
paq {'tjdevries/gruvbuddy.nvim'}
-- Markdown Preview
paq {'npxbr/glow.nvim', run=':GlowInstall'} -- not working, GlowInstall is not executed
-- Terminal
paq {'akinsho/nvim-toggleterm.lua'}
-- Auto pairs
paq {'windwp/nvim-autopairs'} 
-- Tree Sitter Rainbow
paq {'p00f/nvim-ts-rainbow'}
-- Vim-surround (plugin to change quotes and parentheses)
paq {'tpope/vim-surround'}
-- Better quickfix
paq {'kevinhwang91/nvim-bqf'}
-- Hop (plugin to jump around in a buffer)
paq {'phaazon/hop.nvim'}
-- Nvim TS autotag (uses treesitter to autoclose and autorename html tag)
paq {'windwp/nvim-ts-autotag'} 
-- SnipRun (simple and fast code runner)
paq {'michaelb/sniprun', run="bash install.sh"}
-- Kommentary
paq {'b3nj5m1n/kommentary'}
-- Barbar (tabline plugin)
paq {'romgrk/barbar.nvim'}
