return {
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },
  -- ["Pocco81/auto-save.nvim"] = {
  --   commit = "268069b1a5fab571e33f6c8de95e45f0e52423db",
  --   config = function()
  --     require("auto-save").setup {
  --       -- your config goes here
  --       -- or just leave it empty :)
  --     }
  --   end,
  -- },
}
