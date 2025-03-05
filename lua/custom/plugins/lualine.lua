local colors = {
  blue = '#80a0ff',
  cyan = '#79dac8',
  black = '#080808',
  white = '#c6c6c6',
  red = '#ff5189',
  violet = '#d183e8',
  grey = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

local mode1 = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        disabled_bufftypes = { 'quickfix', 'prompt', 'neo-tree' },
        disabled_filetypes = { 'neo-tree' },
        -- theme = 'catppuccin',
        globalstatus = true,

        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      -- sections = {
      --   lualine_a = { 'mode' },
      --   lualine_b = { 'branch', 'diff', 'diagnostics' },
      --   lualine_c = { { 'filename', path = 1 } },
      --   lualine_x = { 'encoding', 'fileformat', 'filetype' },
      --   lualine_y = { 'location' },
      --   lualine_z = {},
      -- },
      --
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          -- '%=',
          { 'filename', path = 1 },
        },
        lualine_x = {},
        lualine_y = { 'encoding', 'fileformat', 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      tabline = {
        lualine_a = {
          { 'buffers' },
        },
        -- lualine_a = { 'tabs' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },

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
local mode2 = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        disabled_bufftypes = { 'quickfix', 'prompt', 'neo-tree' },
        disabled_filetypes = { 'neo-tree' },
        theme = 'catppuccin',
        globalstatus = true,

        section_separators = '',
        component_separators = '',
      },
      -- sections = {
      --   lualine_a = { 'mode' },
      --   lualine_b = { 'branch', 'diff', 'diagnostics' },
      --   lualine_c = { { 'filename', path = 1 } },
      --   lualine_x = { 'encoding', 'fileformat', 'filetype' },
      --   lualine_y = { 'location' },
      --   lualine_z = {},
      -- },
      --
      sections = {
        lualine_a = { { 'mode', right_padding = 2 } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          -- '%=',
          { 'filename', path = 1 },
        },
        lualine_x = {},
        lualine_y = { 'encoding', 'fileformat', 'filetype', 'progress' },
        lualine_z = {
          { 'location', left_padding = 2 },
        },
      },
      tabline = {
        lualine_a = { 'buffers' },
        -- lualine_b = { 'branch' },
        -- lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'tabs' },
      },
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

return mode2
