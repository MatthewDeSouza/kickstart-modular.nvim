return {
  'nyoom-engineering/oxocarbon.nvim',
  lazy = false, -- Load during startup since it's a colorscheme
  priority = 1000, -- Set high priority for colorscheme
  opts = {},
  config = function()
    -- Enable 24-bit RGB color
    vim.opt.termguicolors = true

    -- Set transparent background
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE', ctermbg = 'NONE' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE', ctermbg = 'NONE' })

    -- Load the colorscheme
    vim.cmd.colorscheme 'oxocarbon'
  end,
}
