return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup{
         direction = "float",
        shell= 'pwsh.exe',
        open_mapping = [[<c-\>]],
        direction = 'horizontal',
      }
    end,
  }

