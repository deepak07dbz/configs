return {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = 'VeryLazy',
    opts = {},

    vim.keymap.set("n", "<leader>hh", "<cmd>Hardtime toggle<cr>")
}
