return {
  -- {
  --   'nvim-tree/nvim-tree.lua',
  --   config = function()
  --     require('nvim-tree').setup()
  --   end,
  -- },
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      {
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function()
          require('window-picker').setup {
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', 'quickfix' },
              },
            },
          }
        end,
      },
    },
    cmd = 'Neotree',
    keys = {
      { 'sf', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },

    opts = {
      filesystem = {
        hijack_netrw_behavior = 'open_current',
        window = {
          -- position = 'current',
          mappings = {
            ['sf'] = 'close_window',
            ['s'] = '',
          },
        },
      },
    },
  },
}
