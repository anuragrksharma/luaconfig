---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!
M.refactoring = {
 v = {
    ["<leader>re"] = {[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],  opts = {noremap = true, silent = true, expr = false}},
    ["<leader>rv"] = {[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], opts = {noremap = true, silent = true, expr=false}},
    ["<leader>ri"] = {[[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts = {noremap = true, silent = true, expr=false}},
  },
  n = {
    ["<leader>rb"] = {[[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], opts={noremap = true, silent = true, expr = false}},
    ["<leader>ri"] = {[[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], opts = {noremap = true, silent = true, expr=false}}
  }
}
return M
