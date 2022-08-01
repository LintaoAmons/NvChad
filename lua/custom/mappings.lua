local M = {}

local omniBar = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" }
  }
M.OmniBar = {
  n = omniBar,
  i = omniBar,
  v = omniBar,
}

M.Format = {
  n = {
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "   lsp formatting",
    },
  }
}

M.Quit = {
  n = {
    ["<leader>qq"] = { "<cmd>qa!<cr>", "Quit vim" }
  }
}

-- M.No = {
--   l = { "<cmd>nohlsearch<CR>", "No Highlight" },
-- }
--
M.window = {
	n = {
		["<leader>wl"] = { "<cmd>vsplit<cr>", "Split window vertically" },
		["<leader>wo"] = { "<c-w>o", "Maximize window" },
		["<leader>wc"] = { "<c-w>c", "Close window(buffer)" },
	},
}

return M
