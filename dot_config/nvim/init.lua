-- ======== Leader ========
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ======== Startup ========
if vim.g.vscode then
  require("vscode.keymaps")
else
  -- Over SSH, use OSC 52 so yank/put go through the local terminal's clipboard
  if vim.env.SSH_TTY then
    local osc52 = require("vim.ui.clipboard.osc52")
    vim.g.clipboard = {
      name = "OSC 52",
      copy = { ["+"] = osc52.copy("+"), ["*"] = osc52.copy("*") },
      paste = { ["+"] = osc52.paste("+"), ["*"] = osc52.paste("*") },
    }
  end

  require("core")
  require("lazy_setup")
end
