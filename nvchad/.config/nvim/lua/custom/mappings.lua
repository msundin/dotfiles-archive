---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<CR>"] = { "<CR><Cmd>cclose<CR>", "Close suggestion window after selection" },

    --["gd"] = {"<cmd>Telescope lsp_references<CR>", "Use Telescope pop-up instead of new window"},
    --["gr"] = {"<cmd>Telescope lsp_references<CR>", "Use Telescope pop-up instead of new window"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
