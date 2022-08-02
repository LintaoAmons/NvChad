return {
  ["max397574/better-escape.nvim"] = {
      event = "InsertEnter",
      config = function()
         require("better_escape").setup()
      end,
   },
   -- ["Pocco81/auto-save.nvim"] = {
   --   config = function()
   --     require("auto-save").setup {
   --      -- your config goes here
   --      -- or just leave it empty :)
		 -- }
   --  end,
   -- }
}
