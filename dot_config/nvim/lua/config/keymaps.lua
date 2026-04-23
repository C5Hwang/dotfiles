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

  -- ========= Window Split =========
  -- Window Split (Movement)
  { from = "<LEADER>h", to = "<C-w>h", mode = mode_nv, nore = setnore },
  { from = "<LEADER>j", to = "<C-w>j", mode = mode_nv, nore = setnore },
  { from = "<LEADER>k", to = "<C-w>k", mode = mode_nv, nore = setnore },
  { from = "<LEADER>l", to = "<C-w>l", mode = mode_nv, nore = setnore },
  { from = "<LEADER>t", to = "<C-w>t", mode = mode_nv, nore = setnore },
  { from = "<LEADER>o", to = "<C-w>o", mode = mode_nv, nore = setnore },

  -- Window Split (Operation)
  { from = "sk", to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", mode = mode_nv, nore = setnore },
  { from = "sj", to = ":set splitbelow<CR>:split<CR>", mode = mode_nv, nore = setnore },
  { from = "sh", to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", mode = mode_nv, nore = setnore },
  { from = "sl", to = ":set splitright<CR>:vsplit<CR>", mode = mode_nv, nore = setnore },

  -- Window Split (Resize)
  { from = "<up>", to = ":res +5<CR>", mode = mode_nv, nore = setnore },
  { from = "<down>", to = ":res -5<CR>", mode = mode_nv, nore = setnore },
  { from = "<left>", to = ":vertical resize-5<CR>", mode = mode_nv, nore = setnore },
  { from = "<right>", to = ":vertical resize+5<CR>", mode = mode_nv, nore = setnore },

  -- ========= Tab Management =========
  -- Create a new tab
  { from = "tn", to = ":tabe<CR>", mode = mode_nv, nore = setnore },

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
