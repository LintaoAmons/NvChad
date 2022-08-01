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

M.Find = {
  n = {
    ["<leader>fb"] = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		["<leader>fc"] = { "<cmd>Telescope commands<cr>", "Commands" },
		["<leader>fd"] = { "<cmd>Telescope diagnostics<cr>", "Find lsp diagnostics" },
		["<leader>fe"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Find Help" },
		["<leader>fl"] = { "<cmd>NvimTreeFindFile<cr>", "Find file's Location" },
		["<leader>fM"] = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
		["<leader>fR"] = { "<cmd>Telescope registers<cr>", "Registers" },
    ["<leader>fs"] = { "<cmd>Telescope lsp_document_symbols<CR>", "Find Symbols"},
		["<leader>ff"] = { "<cmd>Telescope live_grep<cr>", "Text" },
		["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
		["<leader>fp"] = { "<cmd>Telescope projects<cr>", "Find Recent Projects" },
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
