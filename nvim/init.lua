-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.tabstop = 4      -- Number of spaces that a <Tab> character stands for
vim.opt.shiftwidth = 4   -- Number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4  -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true -- Convert tabs to spaces
