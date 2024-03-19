-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- NOTE: Evgeny Koltsov mapping
vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<cr>', { desc = 'Toggle Neotree' })
vim.keymap.set('n', '<leader>y', '<cmd>Explore<cr>', { desc = 'Explore' })
vim.keymap.set('n', '<leader>p', '<cmd>bprevious<cr>', { desc = 'Buffer previous' })
vim.keymap.set('n', '<leader>n', '<cmd>bnext<cr>', { desc = 'Buffer next' })
vim.keymap.set('n', '<leader>d', '<cmd>bdelete<cr>', { desc = 'Buffer delete' })

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {}
  end,
}
-- Mapping
