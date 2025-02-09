return {
  'romgrk/barbar.nvim',
  event = 'VimEnter',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    animation = true,
  },
  keys = {
    -- Move between buffers
    { '<A-,>', '<cmd>BufferPrevious<cr>', desc = 'Previous buffer' },
    { '<A-.>', '<cmd>BufferNext<cr>', desc = 'Next buffer' },

    -- Reorder buffers
    { '<A-<>', '<cmd>BufferMovePrevious<cr>', desc = 'Move buffer left' },
    { '<A->>', '<cmd>BufferMoveNext<cr>', desc = 'Move buffer right' },

    -- Jump to buffer using numbers
    { '<A-1>', '<cmd>BufferGoto 1<cr>', desc = 'Go to buffer 1' },
    { '<A-2>', '<cmd>BufferGoto 2<cr>', desc = 'Go to buffer 2' },
    { '<A-3>', '<cmd>BufferGoto 3<cr>', desc = 'Go to buffer 3' },
    { '<A-4>', '<cmd>BufferGoto 4<cr>', desc = 'Go to buffer 4' },
    { '<A-5>', '<cmd>BufferGoto 5<cr>', desc = 'Go to buffer 5' },

    -- Buffer management
    { '<A-p>', '<cmd>BufferPin<cr>', desc = 'Pin buffer' },
    { '<A-c>', '<cmd>BufferClose<cr>', desc = 'Close buffer' },
    { '<C-p>', '<cmd>BufferPick<cr>', desc = 'Pick buffer' },

    -- Buffer sorting
    { '<leader>bb', '<cmd>BufferOrderByBufferNumber<cr>', desc = 'Sort by buffer number' },
    { '<leader>bd', '<cmd>BufferOrderByDirectory<cr>', desc = 'Sort by directory' },
    { '<leader>bl', '<cmd>BufferOrderByLanguage<cr>', desc = 'Sort by language' },
  },
}
