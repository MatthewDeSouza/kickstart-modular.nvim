return {
  'nvim-java/nvim-java',
  dependencies = {
    'nvim-telescope/telescope.nvim', -- for test explorer and diagnostics
    'mfussenegger/nvim-dap', -- for debugging
    'rcarriga/nvim-dap-ui', -- debug UI
  },
  opts = {
    -- Enable Spring Boot support
    spring_boot_tools = {
      enable = true,
      version = '1.59.0',
    },

    -- Java runtime configurations
    jdk = {
      auto_install = true,
      version = '21.0.2', -- Default JDK version
    },

    -- Enable debugging support
    java_debug_adapter = {
      enable = true,
    },

    -- Configure Java runtimes
    jdtls = {
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = 'Java-21',
                path = '/usr/lib/jvm/java-21-openjdk',
                default = true,
              },
              {
                name = 'Java-23',
                path = '/usr/lib/jvm/java-23-openjdk',
              },
            },
          },
        },
      },
    },
  },

  -- Basic keymaps for common operations
  keys = {
    -- Debug keymaps
    {
      '<F5>',
      function()
        require('dap').continue()
      end,
      desc = 'Debug: Continue',
    },
    {
      '<F10>',
      function()
        require('dap').step_over()
      end,
      desc = 'Debug: Step Over',
    },
    {
      '<F11>',
      function()
        require('dap').step_into()
      end,
      desc = 'Debug: Step Into',
    },
    {
      '<leader>b',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Debug: Toggle Breakpoint',
    },

    -- Spring Boot specific
    { '<leader>sb', '<cmd>JavaProfile<cr>', desc = 'Spring: Open Profiles' },
  },
}
