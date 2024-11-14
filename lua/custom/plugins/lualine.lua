return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'location' },
        lualine_z = {},
      },
      options = {
        disabled_bufftypes = { 'quickfix', 'prompt', 'neo-tree' },
        disabled_filetypes = { 'neo-tree' },
      },
    }
  end,
}
