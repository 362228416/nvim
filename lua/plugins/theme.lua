-- theme config
--
return {
  {
    "hardhackerlabs/theme-vim",
    name = "hardhacker",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.hardhacker_hide_tilde = 1
      vim.g.hardhacker_keyword_italic = 1
      -- custom highlights
      vim.g.hardhacker_custom_highlights = {}
      vim.cmd("colorscheme hardhacker")
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "gruvbox",
      colorscheme = "hardhacker",
    },
  },
}
