-- return {
--   { "xiantang/darcula-dark.nvim" },
--   {
--     "LazyVim/LazyVim",
--     opts = { colorscheme = "darcula-dark" },
--   },
-- }
return {
  "nickkadutskyi/jb.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require("jb").setup({transparent = true})
    vim.cmd("colorscheme jb")
    vim.api.nvim_set_hl(0, "Normal", { bg = "#2b2b2b" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "#2b2b2b" })
  end,
}
