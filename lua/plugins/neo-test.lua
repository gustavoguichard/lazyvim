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
    opts = function(_, opts)
      opts.discovery = {
        enabled = false,
        concurrent = 1,
      }
      opts.adapters = {
        require("neotest-vitest")({
          vitestCommand = "npx vitest",
        }),
      }

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true, desc = "" }

      map(
        "n",
        "<leader>tf",
        "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
        vim.tbl_extend("force", opts, { desc = "Run file tests" })
      )
      map(
        "n",
        "<leader>to",
        "<cmd>lua require('neotest').output.open({ enter = true })<cr>",
        vim.tbl_extend("force", opts, { desc = "Test output" })
      )
      map(
        "n",
        "<leader>ts",
        "<cmd>lua require('neotest').summary.toggle(); vim.cmd('w')<cr>",
        vim.tbl_extend("force", opts, { desc = "Test summary" })
      )
      map(
        "n",
        "<leader>tt",
        "<cmd>lua require('neotest').run.run()<cr>",
        vim.tbl_extend("force", opts, { desc = "Run nearest test" })
      )
    end,
  },
}
