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

M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },
}

return M
