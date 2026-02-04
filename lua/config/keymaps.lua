-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Snacks = require("snacks")

-- normal mode
vim.keymap.set("n", "<C-t>", function()
  Snacks.terminal.toggle(nil, { win = { position = "float" } })
end, { desc = "Terminal (float toggle)" })

-- terminal mode
vim.keymap.set("t", "<C-t>", function()
  Snacks.terminal.toggle(nil, { win = { position = "float" } })
end, { desc = "Terminal (float toggle)" })

-- terminal mode 内で Ctrl + hjkl を押した時に、
-- モードを抜けて各方向のウィンドウに移動する設定
vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Move focus to the left window" })
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Move focus to the lower window" })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Move focus to the upper window" })
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Move focus to the right window" })
