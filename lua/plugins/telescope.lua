return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>sc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search current file" },
    },
  },
}
