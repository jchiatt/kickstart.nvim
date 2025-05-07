-- Getting you where you want with the fewest keystrokes.
-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2

return {
  'theprimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-t>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-s>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>fp', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon next' })
    vim.keymap.set('n', '<leader>fn', function()
      harpoon:list():next()
    end, { desc = 'Harpoon previous' })
  end,
}
