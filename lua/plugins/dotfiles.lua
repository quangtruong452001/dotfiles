return {
  -- Show dot files in neo-tree file explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          never_show = {
            ".git",
          },
        },
      },
    },
  },

  -- Include hidden/dot files in snacks.nvim picker (LazyVim default picker)
  {
    "folke/snacks.nvim",
    optional = true,
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", "dist" },
          },
          grep = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", "dist" },
          },
          explorer = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", "dist" },
          },
        },
      },
    },
  },

  -- Include hidden files in Telescope (fallback if using telescope picker)
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!**/.git/**",
          "--glob=!**/node_modules/**",
          "--glob=!**/dist/**",
          "--glob=!**/coverage/**",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          find_command = {
            "rg",
            "--files",
            "--hidden",
            "--glob=!**/.git/**",
            "--glob=!**/node_modules/**",
            "--glob=!**/dist/**",
            "--glob=!**/coverage/**",
          },
        },
      },
    },
  },
}
