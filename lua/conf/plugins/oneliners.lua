return {
  {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter" },
    config = true,
  },
  {
    "okuuva/auto-save.nvim",
    version = "*",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {}
  },
  {
    "smjonas/inc-rename.nvim",
  }
}
