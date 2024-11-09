return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    -- function to run on opening the terminal

    config = function()
      local toggleterm = require 'toggleterm'

      toggleterm.setup {
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true, -- hide the number column in toggleterm buffers
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        persist_size = false,
        direction = 'float',
        close_on_exit = true, -- close the terminal window when the process exits

        float_opts = {
          border = 'rounded',
          winblend = 0,
          highlights = {
            border = 'Normal',
            background = 'Normal',
          },
        },
        on_open = function(term)
          print 'on open'
          vim.cmd 'startinsert!'
          vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
        end,
        -- function to run on closing the terminal
        on_close = function(term)
          vim.cmd 'startinsert!'
        end,
      }

      vim.cmd [[
      augroup terminal_setup | au!
      autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
      autocmd TermEnter * startinsert!
      augroup end
    ]]

      toggleterm.opts = vim.api.nvim_create_autocmd({ 'TermEnter' }, {

        pattern = { '*' },
        callback = function()
          vim.cmd 'startinsert'
        end,
      })
    end,
  },
}
