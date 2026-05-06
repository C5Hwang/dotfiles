-- ======== C And C++ ========
return {
    servers = {
        clangd = {
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--completion-style=detailed",
            },
            filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        },
    },
}
