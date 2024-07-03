-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<S-h>", "^", {})
map("n", "<S-l>", "$", {})

-- buffers
map("n", "<C-A-H>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<C-A-L>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
