require("config.lazy")
require("santomon")

vim.filetype.add({
    filename = {
        ['Tiltfile'] = 'tiltfile',
    },
})

vim.cmd [[set completeopt+=menuone,noselect,popup,]]


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
