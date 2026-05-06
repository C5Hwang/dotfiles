-- ======== Treesitter Plugins ========
return {
    -- Syntax Parsing
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "java",
                "python",
                "go",
                "rust",
                "lua",
                "vim",
                "vimdoc",
                "query",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
