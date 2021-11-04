local utils = require('utils')
local map = utils.map

require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },
        file_ignore_patterns = { "node_modules"},
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new
    }
}

map('n', '<leader>tf', ':Telescope find_files<CR>')
map('n', '<leader>tg', ':Telescope live_grep<CR>')
map('n', '<leader>tb', ':Telescope buffers<CR>')
map('n', '<leader>th', ':Telescope help_tags<CR>')
