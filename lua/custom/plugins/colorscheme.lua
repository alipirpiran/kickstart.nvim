return {

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    {
      'sho-87/kanagawa-paper.nvim',
      lazy = false,
      priority = 1000,
      opts = {},
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.

      require('catppuccin').setup {
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
          shade = 'dark',
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        integrations = {
          mason = true,
          cmp = true,
          diffview = true,
          telescope = true,
          treesitter = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  config = function() end,
}
