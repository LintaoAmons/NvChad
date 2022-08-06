local M = {}

local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new { cmd = "lazygit", direction = "float", hidden = true }
M.lazygit = function()
  lazygit:toggle()
end

local btop = Terminal:new { cmd = "btop", direction = "float", hidden = true }
M.btop = function()
  btop:toggle()
end

return M
