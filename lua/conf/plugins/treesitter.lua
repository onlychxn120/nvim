return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").install({
      "c",
      "cpp",
      "python",
      "html",
      "css",
      "javascript",
      "lua",
      "vim",
      "vimdoc",
      "go",
      "typescript",
      "astro",
      "bash",
      "markdown",
      "markdown_inline",
      "regex"
    })
    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
      callback = function(args)
        local lang = args.match
        if lang ~= "tex" and lang ~= "latex" then
          pcall(vim.treesitter.start, args.buf)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end
}
