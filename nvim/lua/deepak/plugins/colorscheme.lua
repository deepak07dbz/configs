return {
  "EdenEast/nightfox.nvim",
  priority = 1000, -- Ensures the theme loads before other plugins
  config = function()
    require("nightfox").setup({})
    vim.cmd("colorscheme nordfox")
  end,
}

