-- ======== Go ========
return {
    servers = {
        gopls = {
            settings = {
                gopls = {
                    gofumpt = true,
                    staticcheck = true,
                    analyses = {
                        shadow = true,
                        unusedparams = true,
                    },
                },
            },
        },
    },
}
