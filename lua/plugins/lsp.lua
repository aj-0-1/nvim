return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "telescope.nvim",
      "which-key.nvim",
    },
    opts = function(_, opts)
      opts.inlay_hints = { enabled = false }
      return opts
    end,
  },
}
