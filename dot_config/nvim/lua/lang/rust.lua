-- ======== Rust ========
return {
    servers = {
        rust_analyzer = {
            settings = {
                ["rust-analyzer"] = {
                    cargo = {
                        allFeatures = true,
                    },
                    check = {
                        command = "clippy",
                    },
                },
            },
        },
    },
}
