local utils = require('utils')
require('hop').setup()

utils.map("n", "<leader>hw", ":HopWord <CR>")
utils.map("n", "<leader>hp", ":HopPattern <CR>")
utils.map("n", "<leader>h1", ":HopChar1 <CR>")
utils.map("n", "<leader>h2", ":HopChar2 <CR>")
utils.map("n", "<leader>hl", ":HopLine <CR>")

