return {
  "nvim-neotest/neotest",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "phaberest/neotest-phpunit",
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "phaberest/neotest-phpunit",
  },
  ft = { "php" },
  keys = {
    { "<leader>Tt", function() require("neotest").run.run() end, desc = "Run test" },
    { "<leader>Tm", function() require("neotest").summary.marked() end, desc = "Run marked" },
    { "<leader>Ts", function() require("neotest").summary.toggle() end, desc = "Run test suite" },
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-phpunit" {
          phpunit_cmd = function() return "vendor/bin/sail phpunit" end,
        },
      },
    }
  end,
}
