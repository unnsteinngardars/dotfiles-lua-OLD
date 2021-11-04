local utils = require('utils')
local map = utils.map

vim.g.nvim_tree_show_icons = {
	git = 1,
	folders = 1,
	files = 1,
	folder_arrows = 1,
}

require'nvim-tree'.setup {
    lsp_diagnostics = true,
    update_to_buf_dir = {
        auto_open = true
    }
}

-- vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_ignore = { '.git', 'node_modules' }


map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>nr', ':NvimTreeRefresh<CR>')
map('n', '<leader>nf', ':NvimTreeFindFile<CR>')
