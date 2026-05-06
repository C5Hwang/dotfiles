-- ======== UI Plugins ========
return {
    -- Theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "mocha",
            integrations = {
                blink_cmp = true,
                mason = true,
                mini = { enabled = true },
                native_lsp = { enabled = true },
                treesitter = true,
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
