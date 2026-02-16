return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            vim.g.rainbow_delimiters = {
                highlight = {
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterBlue",
                },
            }
        end
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                mode = "buffers",
                separator_style = "slant", -- try "thin" or "padded_slant"
                diagnostics = "nvim_lsp",
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        },
    },
    {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        sort_by = "name",
        view = {
            width = 30,
            side = "left",
            adaptive_size = true,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = false,
        },
        git = {
            enable = true,
            ignore = false,
        },
    },
    config = function()
        require("nvim-tree").setup({})
    end
}

}

