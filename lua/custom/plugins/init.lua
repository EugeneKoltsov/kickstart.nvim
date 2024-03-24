-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- NOTE: Evgeny Koltsov mapping
vim.keymap.set('n', '<leader>t', '<cmd>Neotree toggle<cr>', { desc = 'Toggle Neotree' })
vim.keymap.set('n', '<leader>y', '<cmd>Explore<cr>', { desc = 'Explore' })
vim.keymap.set('n', '<leader>m', '<cmd>bprevious<cr>', { desc = 'Buffer previous' })
vim.keymap.set('n', '<leader>n', '<cmd>bnext<cr>', { desc = 'Buffer next' })
vim.keymap.set('n', '<leader>d', '<cmd>bdelete<cr>', { desc = 'Buffer delete' })
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('x', '<leader>p', '"_dP')
-- vim.keymap.set('n', '<C+y>', '"+y')
-- vim.keymap.set('v', '<C+y>', '"+y')
-- vim.keymap.set('n', '<C+Y>', '"+Y')

-- end of Evgeny Koltsov mapping
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
