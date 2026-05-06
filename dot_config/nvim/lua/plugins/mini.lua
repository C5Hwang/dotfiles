-- ======== Mini Plugins ========
return {
    -- QoL Plugins (Mini Modules)
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            require("mini.icons").setup()
            require("mini.statusline").setup()
            require("mini.tabline").setup()
            require("mini.diff").setup({
                view = {
                    style = "sign",
                },
            })
            require("mini.files").setup({
                windows = {
                    preview = true,
                    width_focus = 35,
                    width_preview = 45,
                },
            })

            local notify = require("mini.notify")
            notify.setup()
            vim.notify = notify.make_notify()

            require("mini.pick").setup()
            require("mini.comment").setup()
            require("mini.surround").setup({
                mappings = {
                    add = "gsa",
                    delete = "gsd",
                    find = "gsf",
                    find_left = "gsF",
                    highlight = "gsh",
                    replace = "gsr",
                    update_n_lines = "gsn",
                    suffix_last = "l",
                    suffix_next = "n",
                },
            })
            require("mini.pairs").setup()

            local ok, icons = pcall(require, "mini.icons")
            if ok and icons.mock_nvim_web_devicons then
                icons.mock_nvim_web_devicons()
            end
        end,
    },
}
