-- ======== Definition ========
local mode_nv = { "n", "v" }
local mode_t = { "t" }
local mode_v = { "v" }
local setnore = { noremap = true }

-- ======== Helpers ========
-- Explorer (require "mini.files")
local function open_files()
    local ok, files = pcall(require, "mini.files")
    if not ok then
        vim.notify("mini.files is not available", vim.log.levels.WARN)
        return
    end

    local path = vim.api.nvim_buf_get_name(0)
    if path == "" then
        path = vim.fn.getcwd()
    end
    files.open(path, true)
end

-- Picker (require "mini.pick")
local function pick(kind)
    return function()
        local ok, picker = pcall(require, "mini.pick")
        if not ok then
            vim.notify("mini.pick is not available", vim.log.levels.WARN)
            return
        end
        picker.builtin[kind]()
    end
end

-- Formatting (require "conform")
local function format_buffer()
    local ok, conform = pcall(require, "conform")
    if ok then
        conform.format({ async = true, lsp_format = "fallback", lsp_fallback = true })
        return
    end

    vim.lsp.buf.format({ async = true })
end

-- ======== Keymap List ========
local maplist = {
    -- ======== Basic ========
    -- Save
    { from = "S",            to = ":w<CR>",                                              mode = mode_nv, nore = setnore },
    { from = ";",            to = ":",                                                   mode = mode_nv, nore = setnore },
    { from = "<Esc>",        to = "<C-\\><C-n>",                                         mode = mode_t,  nore = setnore },

    -- ======== Cursor ========
    -- Cursor Movement
    { from = "<C-j>",        to = "5j",                                                  mode = mode_nv, nore = setnore },
    { from = "<C-l>",        to = "5l",                                                  mode = mode_nv, nore = setnore },
    { from = "<C-h>",        to = "5h",                                                  mode = mode_nv, nore = setnore },
    { from = "<C-k>",        to = "5k",                                                  mode = mode_nv, nore = setnore },

    { from = "o",            to = "o<Esc>",                                              mode = mode_nv, nore = setnore },
    { from = "<C-S-k>",      to = "<Cmd>m-2<CR>",                                        mode = mode_nv, nore = setnore },
    { from = "<C-S-j>",      to = "<Cmd>m+1<CR>",                                        mode = mode_nv, nore = setnore },

    -- ======== Clipboard ========
    -- Yank
    { from = "Y",            to = '"+y',                                                 mode = mode_v,  nore = setnore },

    -- Paste
    { from = "P",            to = '"+p',                                                 mode = mode_nv, nore = setnore },

    -- Delete
    { from = "<leader>d",    to = '"_d',                                                 mode = mode_nv, nore = setnore },

    -- ======== Window Split ========
    -- Window Split (Movement)
    { from = "<leader>h",    to = "<C-w>h",                                              mode = mode_nv, nore = setnore },
    { from = "<leader>j",    to = "<C-w>j",                                              mode = mode_nv, nore = setnore },
    { from = "<leader>k",    to = "<C-w>k",                                              mode = mode_nv, nore = setnore },
    { from = "<leader>l",    to = "<C-w>l",                                              mode = mode_nv, nore = setnore },
    { from = "<leader>t",    to = "<C-w>t",                                              mode = mode_nv, nore = setnore },
    { from = "<leader>o",    to = "<C-w>o",                                              mode = mode_nv, nore = setnore },

    -- Window Split (Operation)
    { from = "sk",           to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>",  mode = mode_nv, nore = setnore },
    { from = "sj",           to = ":set splitbelow<CR>:split<CR>",                       mode = mode_nv, nore = setnore },
    { from = "sh",           to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", mode = mode_nv, nore = setnore },
    { from = "sl",           to = ":set splitright<CR>:vsplit<CR>",                      mode = mode_nv, nore = setnore },

    -- Window Split (Resize)
    { from = "<up>",         to = ":res +5<CR>",                                         mode = mode_nv, nore = setnore },
    { from = "<down>",       to = ":res -5<CR>",                                         mode = mode_nv, nore = setnore },
    { from = "<left>",       to = ":vertical resize-5<CR>",                              mode = mode_nv, nore = setnore },
    { from = "<right>",      to = ":vertical resize+5<CR>",                              mode = mode_nv, nore = setnore },

    -- ======== Tab Management ========
    { from = "tn",           to = ":tabedit<CR>",                                        mode = mode_nv, nore = setnore },
    { from = "tc",           to = ":tabclose<CR>",                                       mode = mode_nv, nore = setnore },
    { from = "[t",           to = ":tabprevious<CR>",                                    mode = mode_nv, nore = setnore },
    { from = "]t",           to = ":tabnext<CR>",                                        mode = mode_nv, nore = setnore },

    -- ======== Buffer Management ========
    { from = "bn",           to = ":enew<CR>",                                           mode = mode_nv, nore = setnore },
    { from = "bc",           to = ":bdelete<CR>",                                        mode = mode_nv, nore = setnore },
    { from = "[b",           to = ":bprevious<CR>",                                      mode = mode_nv, nore = setnore },
    { from = "]b",           to = ":bnext<CR>",                                          mode = mode_nv, nore = setnore },

    -- ======== Search ========
    { from = "<leader><CR>", to = ":nohlsearch<CR>",                                     mode = mode_nv, nore = { noremap = true, silent = true } },

    -- ======== Explorer ========
    { from = "<leader>e",    to = open_files,                                            mode = mode_nv, nore = setnore },

    -- ======== Picker ========
    { from = "<leader>ff",   to = pick("files"),                                         mode = mode_nv, nore = setnore },
    { from = "<leader>fg",   to = pick("grep_live"),                                     mode = mode_nv, nore = setnore },
    { from = "<leader>fb",   to = pick("buffers"),                                       mode = mode_nv, nore = setnore },

    -- ======== Formatting ========
    { from = "<leader>cf",   to = format_buffer,                                         mode = mode_nv, nore = setnore },
}

-- ======== Apply Keymaps ========
for _, mapping in ipairs(maplist) do
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.nore or { noremap = false })
end
