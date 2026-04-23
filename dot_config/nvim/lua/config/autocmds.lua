-- Disable autoformat for these file types
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cpp", "c", "python", "java" },
  callback = function()
    vim.b.autoformat = false
  end,
})
