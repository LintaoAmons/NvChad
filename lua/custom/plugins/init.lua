return {
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    config = function()
      require("custom.plugins.configs.null-ls").setup()
    end,
  },
  ["kylechui/nvim-surround"] = {
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  ["stevearc/aerial.nvim"] = {
    config = function()
      require("aerial").setup()
    end,
  },
  ["Shatur/neovim-session-manager"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("custom.plugins.configs.neovim-session-manager").setup()
    end,
  },
  ["akinsho/toggleterm.nvim"] = {
    tag = "v2.*",
    config = function()
      require("toggleterm").setup()
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
