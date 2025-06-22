return
{
  "itchyny/lightline.vim",
  dependencies = { "tpope/vim-fugitive" },
  config = function()
    vim.g.lightline = {
      colorscheme = "nord",
      active = {
        left = {
          { "mode", "paste" },
          { "gitbranch", "readonly", "filename", "modified" }
        }
      },
      component_function = {
        gitbranch = "FugitiveHead"
      }
    }
  end,
}
