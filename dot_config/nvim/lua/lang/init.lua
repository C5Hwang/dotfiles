-- ======== Languages Initiation ========
local M = {}

local modules = {
    "lang.c",
    "lang.go",
    "lang.java",
    "lang.python",
    "lang.rust",
}

local function each_language(callback)
    for _, module in ipairs(modules) do
        callback(require(module))
    end
end

function M.servers()
    local servers = {}

    each_language(function(language)
        if language.servers then
            servers = vim.tbl_deep_extend("force", servers, language.servers)
        end
    end)

    return servers
end

function M.plugins()
    local plugins = {}

    each_language(function(language)
        if language.plugins then
            vim.list_extend(plugins, language.plugins)
        end
    end)

    return plugins
end

return M
