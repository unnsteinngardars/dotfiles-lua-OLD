local utils = require('utils')
local map = utils.map

function MoveLineUp()
	local curr_pos = vim.api.nvim_win_get_cursor(0)
	local new_pos = {curr_pos[1] - 1, curr_pos[2]}
	vim.api.nvim_exec("execute 'normal! ddkP'", false)
	vim.api.nvim_win_set_cursor(0, new_pos)
end

function MoveLineDown()
	local curr_pos = vim.api.nvim_win_get_cursor(0)
	local new_pos = {curr_pos[1] + 1, curr_pos[2]}
	vim.api.nvim_exec("execute 'normal! ddp'", false)
	vim.api.nvim_win_set_cursor(0, new_pos)
end

map("i", "jk", "<esc>")
map("n", "<leader>o", ":%s/<C-r><C-w>//g<Left><Left>")
map("n", "<leader>O", ":%s/<C-r><C-w>//gc<Left><Left><Left>")

map("n", "<A-j>", ":lua MoveLineDown()<CR>")
map("n", "<A-k>", ":lua MoveLineUp()<CR>")

-- <C-x><C-f> in insert mode will display file import suggestions
