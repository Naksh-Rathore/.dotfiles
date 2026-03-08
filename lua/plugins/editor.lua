return {
    -- Existing plugins
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

    -- VS Code-like bufferline (tabs)
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                numbers = "ordinal",
                indicator = { style = "underline" },
                show_buffer_close_icons = true,
                show_close_icon = false,
                tab_size = 18,
                diagnostics = "nvim_lsp",
            },
        },
    },

    -- VS Code-like file explorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-tree").setup({
                disable_netrw = true,
                hijack_netrw = true,
                update_cwd = true,
                view = { width = 30, side = "left", float = { enable = false } },
                renderer = {
                    icons = {
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = true,
                        },
                    },
                },
                actions = {
                    open_file = { quit_on_open = false, resize_window = true },
                },
            })
            vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
        end
    },

    {
      "goolord/alpha-nvim",
      event = "VimEnter",
      opts = function(_, opts)
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
         " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
         " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
         " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
         " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
         " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
         " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
        }

        dashboard.section.buttons.val = {
          dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
          dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
          dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
          dashboard.button("g", "󰈬  Live Grep", ":Telescope live_grep<CR>"),
          dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        return dashboard.config
      end,
    }
}

