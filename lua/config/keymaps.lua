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
