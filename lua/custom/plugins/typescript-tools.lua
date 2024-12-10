return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    -- settings = {
    --   tsserver_file_preferences = {
    --     includeInlayParameterNameHints = 'all',
    --     includeInlayParameterNameHintsWhenArgumentMatchesName = false,
    --     includeInlayFunctionParameterTypeHints = true,
    --     includeInlayVariableTypeHints = true,
    --     includeInlayVariableTypeHintsWhenTypeMatchesName = false,
    --     includeInlayPropertyDeclarationTypeHints = true,
    --     includeInlayFunctionLikeReturnTypeHints = true,
    --     includeInlayEnumMemberValueHints = true,
    --   },
    -- },
    complete_function_calls = true,
    -- filetypes = { 'typescript' },
  },
}
