return {
    -- Configure LazyVim theme
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },

    {
        "folke/noice.nvim",
        opts = {
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
            },
        },
    },
    {
        "folke/flash.nvim",
        keys = {
            -- disable the default flash keymap
            { "s", mode = { "n", "x", "o" }, false },
            { "S", mode = { "n", "x", "o" }, false },

            -- add keymaps
            {
                "?",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "o", "x" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
    },
}
