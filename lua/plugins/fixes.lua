return {
  -- Fix inlay hints
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Set inlay hints as a table with enabled = false
      opts.inlay_hints = { enabled = false }
      return opts
    end,
  },

  -- Fix bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        -- Put diagnostics inside options table
        diagnostics = {
          enabled = true,
          show_on_buffers = true,
        },
      },
    },
  },

  -- Explicitly configure LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
