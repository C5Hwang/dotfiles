-- ======== Completion Plugins ========
return {
    -- Blink
    {
        "saghen/blink.cmp",
        version = "1.*",
        opts = {
            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 500,
                },
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = false,
                    },
                },
            },
            keymap = {
                preset = "none",
                ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
                ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
                ["<CR>"] = { "select_and_accept", "fallback" },
                ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<Esc>"] = { "cancel", "fallback" },
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
        },
        opts_extend = { "sources.default" },
    },
}
