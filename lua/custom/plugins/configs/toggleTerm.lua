local M = {}

local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new { cmd = "lazygit", direction = "float", hidden = true }
M.lazygit = function()
  lazygit:toggle()
end

return M
