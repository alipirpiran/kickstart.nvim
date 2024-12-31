return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'location' },
        lualine_z = {},
      },
      options = {
        disabled_bufftypes = { 'quickfix', 'prompt', 'neo-tree' },
        disabled_filetypes = { 'neo-tree' },
        theme = 'catppuccin',
        globalstatus = true,
      },
      -- tabline = {
      --   -- lualine_a = { 'buffers' },
      --   lualine_a = { 'tabs' },
      --   lualine_b = {},
      --   lualine_c = {},
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {},
      -- },

      -- winbar = {
      --   lualine_a = {},
      --   lualine_b = {},
      --   lualine_c = { 'filename' },
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
      --
      -- inactive_winbar = {
      --   lualine_a = {},
      --   lualine_b = {},
      --   lualine_c = { 'filename' },
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {},
      -- },
    }
  end,
}
