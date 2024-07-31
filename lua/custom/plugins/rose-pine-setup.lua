return {
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      highlight_groups = {
        -- disable_background = true,
        -- Normal = { bg = '#061111' },
        -- NormalNC = { bg = '#061111' },
        Normal = { bg = '#0c0d15' },
        NormalNC = { bg = '#0c0d15' },
      },
    }
  end,
}
