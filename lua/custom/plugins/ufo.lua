return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
      {
        'luukvbaal/statuscol.nvim',
        config = function()
          local builtin = require 'statuscol.builtin'
          require('statuscol').setup {
            relculright = true,
            segments = {
              { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
              { text = { '%s' }, click = 'v:lua.ScSa' },
              { text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
            },
          }
        end,
      },
    },
    config = function()
      vim.o.foldcolumn = '1' -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

      -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set('n', 'zp', function()
        local winid = require('ufo').peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end)
      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
      -- fold
      vim.keymap.set('n', '<leader>zs', require('ufo').closeAllFolds, { desc = '[s]hut all folds' })
      vim.keymap.set('n', '<leader>zo', require('ufo').openAllFolds, { desc = '[o]pen all [f]olds' })

      require('ufo').setup {

        provider_selector = function()
          return { 'treesitter', 'indent' }
        end,
      }
    end,
  },
  -- {
  --   'anuvyklack/fold-preview.nvim',
  --   dependencies = 'anuvyklack/keymap-amend.nvim',
  --   config = function()
  --     require('fold-preview').setup()
  --   end,
  -- },
}
