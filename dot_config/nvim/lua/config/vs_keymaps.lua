-- ========= Definition =========
local mode_nv = { "n", "v" }
local mode_t = { "t" }
local mode_v = { "v" }
local mode_i = { "i" }
local setnore = { noremap = true }

local maplist = {
  -- ========= Basic =========
  -- Save
  { from = "S", to = ":w<CR>", mode = mode_nv, nore = setnore },

  -- Basic Remap
  { from = ";", to = ":", mode = mode_nv, nore = setnore },
  { from = "<Esc>", to = "<C-\\><C-n>", mode = mode_t, nore = setnore },

  -- ========= Cursor =========
  -- Cursor Movement
  { from = "<C-j>", to = "5j", mode = mode_nv, nore = setnore },
  { from = "<C-l>", to = "5l", mode = mode_nv, nore = setnore },
  { from = "<C-h>", to = "5h", mode = mode_nv, nore = setnore },
  { from = "<C-k>", to = "5k", mode = mode_nv, nore = setnore },

  { from = "o", to = "o<Esc>", mode = mode_nv, nore = setnore },
  { from = "<C-S-k>", to = "<Cmd>m-2<CR>", mode = mode_nv, nore = setnore },
  { from = "<C-S-j>", to = "<Cmd>m+1<CR>", mode = mode_nv, nore = setnore },

  -- ========= Clipboard =========
  -- Yank
  { from = "Y", to = '"+y', mode = mode_v, nore = setnore },

  -- Paste
  { from = "P", to = '"+p', mode = mode_nv, nore = setnore },

  -- Delete
  { from = "<LEADER>d", to = '"_d', mode = mode_nv, nore = setnore },

  -- ========= Extra Options =========

  -- Search
  {
    from = "<LEADER><CR>",
    to = ":nohlsearch<CR>",
    mode = mode_nv,
    nore = { noremap = true, silent = true },
  },
}

for _, mapping in ipairs(maplist) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.nore or { noremap = false })
end
