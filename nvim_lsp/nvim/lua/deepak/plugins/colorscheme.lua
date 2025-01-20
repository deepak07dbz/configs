return {
    {
        "folke/tokyonight.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            local bg = "#011628"
            local bg_dark = "#011423"
            local bg_highlight = "#143652"
            local bg_search = "#0A64AC"
            local bg_visual = "#275378"
            local fg = "#CBE0F0"
            local fg_dark = "#B4D0E9"
            local fg_gutter = "#627E97"
            local border = "#547998"

                require("tokyonight").setup({
                style = "night",
                on_colors = function(colors)
                    colors.bg = bg
                    colors.bg_dark = bg_dark
                    colors.bg_float = bg_dark
                    colors.bg_highlight = bg_highlight
                    colors.bg_popup = bg_dark
                    colors.bg_search = bg_search
                    colors.bg_sidebar = bg_dark
                    colors.bg_statusline = bg_dark
                    colors.bg_visual = bg_visual
                    colors.border = border
                    colors.fg = fg
                    colors.fg_dark = fg_dark
                    colors.fg_float = fg
                    colors.fg_gutter = fg_gutter
                    colors.fg_sidebar = fg_dark
                end,
            })
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
            vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
            vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")

            -- Apply transparency for UI elements
            vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })

            -- Make statusline transparent
            vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })

            -- Make nvim-tree fully transparent
            vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE" })

            -- Make floating windows transparent
            vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

            -- Optionally, make popup menu transparent (for certain plugins like completion)
            vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "PmenuSel", { bg = "NONE" })
        end,
    },
}
