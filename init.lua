require("config.lazy")
require("santomon")
vim.cmd [[source ~/.config/nvim/vim/config/set.vim]]

vim.filetype.add({
    filename = {
        ['Tiltfile'] = 'tiltfile',
    },
})

vim.cmd.source(vim.fn.stdpath('config') .. '/vim/config/set.vim')


vim.lsp.enable("basedpyright")
vim.lsp.enable("luals")
vim.lsp.enable("jsonls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("yamlls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("tilt_ls")

-- Optional: Only required if you need to update the language server settings
-- vim.lsp.config('ty', {
--   settings = {
--     ty = {
--       -- ty language server settings go here
--     }
--   }
-- })
--
-- Required: Enable the language server
-- vim.lsp.enable("ty")


vim.lsp.enable("ruff")
vim.lsp.enable("taplo")
vim.lsp.enable("texlab")
