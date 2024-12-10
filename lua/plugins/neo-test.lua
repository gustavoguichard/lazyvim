return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "marilari88/neotest-vitest",
    },
    opts = {
      discovery = {
        enabled = false,
        concurrent = 1,
      },
      adapters = {
        function()
          return require("neotest-vitest")({
            vitestCommand = "npx vitest",
          })
        end,
      },
    },
    keys = {
      {
        "<leader>tf",
        "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
        desc = "Run file tests",
        noremap = true,
        silent = true,
      },
      {
        "<leader>to",
        "<cmd>lua require('neotest').output.open({ enter = true })<cr>",
        desc = "Test output",
        noremap = true,
        silent = true,
      },
      {
        "<leader>ts",
        "<cmd>lua require('neotest').summary.toggle(); vim.cmd('w')<cr>",
        desc = "Test summary",
        noremap = true,
        silent = true,
      },
      {
        "<leader>tt",
        "<cmd>lua require('neotest').run.run()<cr>",
        desc = "Run nearest test",
        noremap = true,
        silent = true,
      },
    },
  },
}
