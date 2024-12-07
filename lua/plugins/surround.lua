return {
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
        keymaps = {
          insert = "<C-g>s",
          insert_line = "<C-g>S",
          normal = "sa",
          normal_cur = "ss",
          normal_line = "sS",
          normal_cur_line = "sSS",
          visual = "s",
          visual_line = "S",
          delete = "sd",
          change = "sc",
          change_line = "sC",
        },
      })
    end,
  },
}
