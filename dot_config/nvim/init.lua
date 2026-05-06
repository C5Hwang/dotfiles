-- ======== Leader ========
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- ======== Startup ========
if vim.g.vscode then
  require("vscode.keymaps")
else
  require("core")
  require("lazy_setup")
end
