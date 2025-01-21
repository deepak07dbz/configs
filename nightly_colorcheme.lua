return {
    {
        "bluz71/vim-nightfly-colors",
        name = "nightfly",
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd [[colorscheme nightfly]]
            vim.g.nightflyCursorColor = true
            vim.g.nightflyNormalFloat = true
            vim.g.nightflyTransparent = true
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
