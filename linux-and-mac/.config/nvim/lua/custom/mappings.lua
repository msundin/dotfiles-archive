---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- my own mappings
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- other mappings
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<CR>"] = { "<CR><Cmd>cclose<CR>", "Close suggestion window after selection" },
    ["gd"] = { "<cmd>Telescope lsp_references<CR>", "Use Telescope pop-up instead of new window" },
    ["gr"] = { "<cmd>Telescope lsp_references<CR>", "Use Telescope pop-up instead of new window" },
  },
  v = {
    -- my own mappings
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- other mappings
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
