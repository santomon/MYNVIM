local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>plg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>pd', builtin.lsp_document_symbols, { desc = 'Telescope document symbols' })
vim.keymap.set('n', '<M-e>', builtin.oldfiles, { desc = 'Telescope previously opened files' })

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") } );
end)

vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
