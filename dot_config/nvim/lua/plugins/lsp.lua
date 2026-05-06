-- ======== Helpers ========
local function lsp_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local ok, blink = pcall(require, "blink.cmp")

    if ok and blink.get_lsp_capabilities then
        return blink.get_lsp_capabilities(capabilities)
    end

    return capabilities
end

local function setup_server(name, config)
    if vim.lsp.config and vim.lsp.enable then
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
        return
    end

    require("lspconfig")[name].setup(config)
end

-- ======== LSP Plugins ========
local specs = {
    -- Mason
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                border = "rounded",
            },
        },
    },

    -- Mason Tools
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "mason-org/mason.nvim" },
        opts = {
            ensure_installed = {
                "jdtls",
                "clang-format",
                "black",
                "gofumpt",
                "goimports",
                "google-java-format",
                "stylua",
            },
            auto_update = false,
            run_on_start = true,
        },
    },
    -- Language Servers
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            "saghen/blink.cmp",
        },
        config = function()
            local mason_lspconfig = require("mason-lspconfig")
            local servers = require("lang").servers()
            local server_names = vim.tbl_keys(servers)
            local capabilities = lsp_capabilities()

            mason_lspconfig.setup({
                ensure_installed = server_names,
                automatic_enable = false,
            })

            for name, server_config in pairs(servers) do
                setup_server(name, vim.tbl_deep_extend("force", { capabilities = capabilities }, server_config))
            end
        end,
    },
}

vim.list_extend(specs, require("lang").plugins())

return specs
