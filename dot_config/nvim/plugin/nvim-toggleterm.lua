local utils = require('utils')
local map = utils.map
local buf_map = utils.buf_map

require('toggleterm').setup{
    open_mapping = [[<C-\>]],
    insert_mappings = false,
    direction = 'float',
}

function set_terminal_keymaps() 
    buf_map('t', '<esc>', [[<C-\><C-n>]])
    buf_map('t','jk', [[<C-\><C-n>]])
    buf_map('t','<C-h>', [[<C-\><C-n><C-W>h]])
    buf_map('t','<C-j>', [[<C-\><C-n><C-W>j]])
    buf_map('t','<C-k>', [[<C-\><C-n><C-W>k]])
    buf_map('t','<C-l>', [[<C-\><C-n><C-W>l]])
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
