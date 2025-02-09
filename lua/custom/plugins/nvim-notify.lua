return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  opts = {
    -- Default configuration
    stages = 'fade',
    timeout = 3000,
    render = 'default',
    background_colour = '#262626',
    max_width = nil,
    max_height = nil,
    on_open = nil,
    on_close = nil,
    minimum_width = 50,
    fps = 30,
    top_down = true,
    time_formats = {
      notification_history = '%FT%T',
      notification = '%T',
    },
    level = 2,
    -- Set as the default vim.notify
    -- This should be done as early as possible
    init = function()
      vim.notify = require 'notify'
    end,
  },
  keys = {
    {
      '<leader>un',
      function()
        require('notify').dismiss { silent = true, pending = true }
      end,
      desc = 'Dismiss all notifications',
    },
  },
  -- Optional dependencies
  dependencies = {
    -- For telescope integration
    'nvim-telescope/telescope.nvim',
  },
  config = function(_, opts)
    local notify = require 'notify'
    notify.setup(opts)
    -- Load telescope extension
    require('telescope').load_extension 'notify'
  end,
}
