return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "ff",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "flash",
      },
      { "s", mode = { "n", "o", "x" }, false },
    },
  },
}
