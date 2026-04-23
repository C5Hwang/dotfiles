-- bootstrap lazy.nvim, LazyVim and your plugins
package.loaded["lazyvim.config.keymaps"] = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

if vim.g.vscode then
  require("config.vs_keymaps")
else
  require("config.lazy")
  -- options.lua, keymaps.lua, autocmds.lua are auto-loaded by LazyVim
end
