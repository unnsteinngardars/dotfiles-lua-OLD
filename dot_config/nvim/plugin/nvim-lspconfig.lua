-- TODO: Finish setting up config that might be missing for servers
-- along with setting up the diagnostic-languageserver and configure prettier and eslint
--

local nvim_lsp = require('lspconfig')
local nvim_util = require('lspconfig/util')
local root_pattern = nvim_util.root_pattern
local utils = require('utils')
local map = utils.map

local on_attach = function(client, bufnr) 
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
    root_dir = root_pattern("package.json"),
}


nvim_lsp.vuels.setup {
    on_attach = on_attach,
    cmd = { "vls"},
    filetypes = { "vue", "javascript", "typescript" },
    init_options = {
        config = {
            css = {},
            emmet = {},
            html = {
              suggest = {}
            },
            javascript = {
              format = {}
            },
            stylusSupremacy = {},
            typescript = {
              format = {}
            },
            vetur = {
              completion = {
                autoImport = false,
                tagCasing = "kebab",
                useScaffoldSnippets = false
              },
              format = {
                defaultFormatter = {
                  js = "none",
                  ts = "none"
                },
                defaultFormatterOptions = {},
                scriptInitialIndent = false,
                styleInitialIndent = false
              },
              useWorkspaceDependencies = false,
              validation = {
                script = true,
                style = true,
                template = true
              }
            }
        }
    },
    root_dir = root_pattern("package.json", "vue.config.js")
}

