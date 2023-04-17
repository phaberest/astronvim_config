return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- { "mg979/vim-visual-multi", lazy = false },
  -- { "booperlv/nvim-gomove", lazy = false },
  {
    "m4xshen/smartcolumn.nvim",
    event = { "InsertEnter", "User AstroFile" },
    opts = {
      colorcolumn = { 80, 120 },
    },
  },
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    config = true,
    -- replace f and F and t and T
    keys = {
      {
        "f",
        function()
          require("hop").hint_char1 {
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
          }
        end,
        desc = "Hop char 2",
      },
      {
        "F",
        function()
          require("hop").hint_char1 {
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
          }
        end,
        desc = "Hop char 2 reverse",
      },
      {
        "t",
        function()
          require("hop").hint_char1 {
            direction = require("hop.hint").HintDirection.AFTER_CURSOR,
            hint_offset = -1,
          }
        end,
        desc = "Hop char 1",
      },
      {
        "T",
        function()
          require("hop").hint_char1 {
            direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
            hint_offset = 1,
          }
        end,
        desc = "Hop char 1 reverse",
      },
    },
  },
}
