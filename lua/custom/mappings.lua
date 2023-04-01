---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.portals = {
  n = {
    ["<leader>o"] = { "<cmd>Portal jumplist forward<cr>", opts = { nowait = true } },
    ["<leader>i"] = { "<cmd>Portal jumplist backward<cr>", opts = { nowait = true } },
  },
}

M.telescope = {
  n = {
    ["<leader>f/"] = {
      function()
        require("telescope.builtin").live_grep { search_dirs = { "%:p" } }
      end,
      "non fuzzy buffer search",
    },
  },
}

-- more keybinds!

return M
