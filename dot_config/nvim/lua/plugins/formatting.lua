-- ======== Formatting Plugins ========
return {
    -- Conform
    {
        "stevearc/conform.nvim",
        opts = {
            format_on_save = false,
            formatters_by_ft = {
                c = { "clang_format" },
                cpp = { "clang_format" },
                go = { "goimports", "gofumpt" },
                java = { "google_java_format" },
                lua = { "stylua" },
                python = { "black" },
                rust = { "rustfmt" },
            },
        },
    },
}
