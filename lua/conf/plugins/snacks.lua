return {
  "folke/snacks.nvim",
  priority = 900,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    explorer = { enabled = true },
    image = { 
      enabled = true,
      math = {
        enabled = false,
      }
    },
    indent = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
    terminal = { enabled = true }
  },
  keys = {
    -- Explorer
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    -- Finder
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>t", function() Snacks.terminal() end, desc = "Toggle Terminal" }
  }
}
