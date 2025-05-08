return {
  'sanathks/workspace.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('workspace').setup {
      workspaces = {
        { name = 'rafl', path = '~/Dev/rafl', keymap = { '<leader>r' } },
        { name = 'Grapple', path = '~/Dev/grapple', keymap = { '<leader>p' } },
      },
    }

    local workspace = require 'workspace'
    vim.keymap.set('n', '<leader>xls', workspace.tmux_sessions)
  end,
}
