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
-- The Primeagen keymaps
-- moves lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

-- keep cursor in start position
vim.keymap.set('n', 'J', 'mzJ`z')

-- keep cursor in middle position moving half screen
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- keep cursor in middle position while searching
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- keep content in clipboard while pasting in highlighting texp insted of replace by highlighting text
vim.keymap.set('x', '<leader>p', '"_dP')

-- next greatest remap ever : asbjornHaland
-- (copy selected text to system clipboard when its separate for nvim)
-- need to try these features
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- replace text under the cursor intire all file
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- makes current file executable like chmod +x command
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
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
