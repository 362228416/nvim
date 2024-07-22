return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    setup = function()
      vim.keymap.set({ "i", "n" }, "-", function()
        print("hello")
      end, { desc = "Comment Code" })
    end,
  },
}
