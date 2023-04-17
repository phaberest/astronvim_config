return {
  {
    "gbprod/phpactor.nvim",
    ft = { "php" },
    requires = {
      "nvim-lua/plenary.nvim", -- required to update phpactor
    },
    keys = {
      { "n", "<Leader>lm", ":PhpactorMenu<CR>", "phpactor menu" },
    },
  },
}
