-- ======== Java LSP ========
local M = {
    servers = {},
}

-- Capabilities
local function capabilities()
    local base = vim.lsp.protocol.make_client_capabilities()
    local ok, blink = pcall(require, "blink.cmp")

    if ok and blink.get_lsp_capabilities then
        return blink.get_lsp_capabilities(base)
    end

    return base
end

-- Project Root
local function root_dir()
    local path = vim.api.nvim_buf_get_name(0)
    local markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle", "build.gradle.kts" }

    if vim.fs and vim.fs.root then
        return vim.fs.root(path, markers) or vim.fn.getcwd()
    end

    return require("lspconfig.util").root_pattern(unpack(markers))(path) or vim.fn.getcwd()
end

-- Start Server
function M.start_or_attach()
    local ok, jdtls = pcall(require, "jdtls")
    if not ok then
        vim.notify("nvim-jdtls is not available", vim.log.levels.WARN)
        return
    end

    local root = root_dir()
    local project_name = vim.fn.fnamemodify(root, ":p:h:t")
    local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name

    jdtls.start_or_attach({
        cmd = { "jdtls", "-data", workspace_dir },
        root_dir = root,
        capabilities = capabilities(),
        settings = {
            java = {},
        },
        init_options = {
            bundles = {},
        },
    })
end

M.plugins = {
    {
        "mfussenegger/nvim-jdtls",
        ft = "java",
        config = function()
            local start = function()
                require("lang.java").start_or_attach()
            end

            vim.api.nvim_create_autocmd("FileType", {
                pattern = "java",
                callback = start,
            })

            if vim.bo.filetype == "java" then
                start()
            end
        end,
    },
}

return M
