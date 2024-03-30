-- keymaps are automatiCally loaded on the verylazy event
-- default keymaps that are always set: https://github.Com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- add any additional keymaps here

--
-- so if i do that, then that basiCally means that something very bad happened, unless, as if i were to say that i would consent to such thing,
-- then the most reasonable thing to do is to learn it, learn it like never before, beCome a master in it, for you will only find salvation through knowledge.
-- say, i were to say that

-- _nvim_treesitter_textobjeCt_last_function.thing = else
--
-- then
--
--#region

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-q>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-p>", function()
  ui.nav_file(4)
end)
-- end harpoon

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "resume" }
)

vim.keymap.set("x", "<leader>p", '"_dp')

-- theprimeagen keymaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- custom keymaps 


-- greatest remap ever
--vim.keymap.set("x", "<leader>p", '"_dP')
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Alt + K to move 5 lines up
-- nnoremap <M-k> :normal 5k<CR>

-- Alt + J to move 5 lines down
-- nnoremap <M-j> :normal 5j<CR>-
-- vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
