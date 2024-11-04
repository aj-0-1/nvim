return {
  -- Fix bufferline
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        diagnostics = {
          enabled = true,
          show_on_buffers = true,
        },
      },
    },
  },

  -- LazyVim configuration
  {
    "LazyVim/LazyVim",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
