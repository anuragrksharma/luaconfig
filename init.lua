local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- 6

vim.wo.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexp()"
vim.opt.foldenable = false
