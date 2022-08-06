local M = {}

-- align with IDEA and other App
local omniBar = {
  ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
  -- can't use <cmd> in vim, sad
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
  },
}

M.paste = {
  v = {
    ["p"] = { '"_dP', "Paste without change current yanked content" },
  },
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
    ["<leader>fs"] = { "<cmd>Telescope lsp_document_symbols<CR>", "Find Symbols" },
    ["<leader>ff"] = { "<cmd>Telescope live_grep<cr>", "Text" },
    ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", "Find Recent Projects" },
  },
}

M.Fold = {
  n = {
    ["<leader>zo"] = { "zR", "Unfold all" },
    ["<leader>zc"] = { "zM", "Fold all" },
  },
}

M.Git = {
  n = {
    ["<leader>gj"] = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
    ["<leader>gk"] = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
    ["<leader>gl"] = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    ["<leader>gp"] = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    ["<leader>gr"] = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    ["<leader>gR"] = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    ["<leader>gs"] = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    ["<leader>gu"] = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
    ["<leader>go"] = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    ["<leader>gb"] = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    ["<leader>gC"] = { "<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)" },
    ["<leader>gd"] = { "<cmd>Gitsigns diffthis HEAD<cr>", "Git Diff" },
  },
}

M.Quit = {
  n = {
    ["<leader>qq"] = { "<cmd>wqa<cr>", "Quit vim" },
  },
}

M.No = {
  n = {
    ["<leader>nl"] = "<cmd>nohlsearch<CR>",
    "No Highlight",
  },
}

M.window = {
  n = {
    ["<leader>wl"] = { "<cmd>vsplit<cr>", "Split window vertically" },
    ["<leader>wo"] = { "<c-w>o", "Maximize window" },
    ["<leader>wc"] = { "<c-w>c", "Close window(buffer)" },
  },
}

M.Show = {
  n = {
    ["<leader>ss"] = { "<cmd>AerialToggle<cr>", "Show structure" },
  },
}

M.toggleTerm = {
  n = {
    ["<leader>gg"] = { '<cmd>lua require("custom.plugins.configs.toggleTerm").lazygit()<cr>', "toggle lazygit" },
  },
}

return M
