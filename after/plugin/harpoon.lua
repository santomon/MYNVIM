local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)
vim.keymap.set("n", "<leader>5", function()
  harpoon:list():select(5)
end)
vim.keymap.set("n", "<leader>6", function()
  harpoon:list():select(6)
end)
vim.keymap.set("n", "<leader>6", function()
  harpoon:list():select(6)
end)
vim.keymap.set("n", "<leader>7", function()
  harpoon:list():select(7)
end)
vim.keymap.set("n", "<leader>9", function()
  harpoon:list():select(9)
end)
vim.keymap.set("n", "<leader>8", function()
  harpoon:list():select(8)
end)
vim.keymap.set("n", "<leader>10", function()
  harpoon:list():select(10)
end)

-- assign directly to harpoon

vim.keymap.set("n", "<leader><C-1>", function()
  harpoon:list():replace_at(1)
end)

vim.keymap.set("n", "<leader><C-2>", function()
  harpoon:list():replace_at(2)
end)

vim.keymap.set("n", "<leader><C-3>", function()
  harpoon:list():replace_at(3)
end)

vim.keymap.set("n", "<leader><C-4>", function()
  harpoon:list():replace_at(4)
end)

vim.keymap.set("n", "<leader><C-5>", function()
  harpoon:list():replace_at(5)
end)

vim.keymap.set("n", "<leader><C-6>", function()
  harpoon:list():replace_at(6)
end)
vim.keymap.set("n", "<leader><C-7>", function()
  harpoon:list():replace_at(7)
end)
vim.keymap.set("n", "<leader><C-8>", function()
  harpoon:list():replace_at(8)
end)
vim.keymap.set("n", "<leader><C-9>", function()
  harpoon:list():replace_at(9)
end)
vim.keymap.set("n", "<leader><C-10>", function()
  harpoon:list():replace_at(10)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- -- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
--
-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
--     { desc = "Open harpoon window" })
