return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "rouge8/neotest-rust",
    },
    config = function()
      local neotest = require("neotest")
      vim.keymap.set("n", "<Leader>t", "", { desc = "Test" })
      vim.keymap.set("n", "<Leader>ta", function()
        neotest.summary.open()
        neotest.run.run(vim.fn.expand("%"))
      end, { desc = "Run all tests" })
      vim.keymap.set("n", "<Leader>tt", function()
        neotest.run.run()
        neotest.output.open({ output = true })
      end, { noremap = true, silent = true, desc = "Run test" })
      vim.keymap.set("n", "<Leader>ts", function()
        neotest.run.stop()
      end, { noremap = true, silent = true, desc = "Stop test" })
      vim.keymap.set("n", "<Leader>ti", function()
        neotest.summary.toggle()
      end, { noremap = true, silent = true, desc = "Test Summary" })
      vim.keymap.set("n", "<Leader>to", function()
        neotest.output_panel.toggle()
      end, { noremap = true, silent = true, desc = "Test Output window" })
      neotest.setup({
        log_level = vim.log.levels.TRACE,
        adapters = {
          --require("neotest-rust"),
          require("neotest-rust")({ args = { "--no-capture" } }),
        },
      })
    end,
  },
}
