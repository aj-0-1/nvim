return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      { "stevearc/dressing.nvim", opts = {} },
    },
    config = function()
      require("codecompanion").setup({
        adapters = {
          chat = {
            provider = "ollama",
            params = {
              model = "deepseek-coder-v2:16b",
              url = "http://localhost:11434/api",
            },
          },
          inline = {
            provider = "ollama", -- Set inline completion to use Ollama too
            params = {
              model = "codellama:7b",
              url = "http://localhost:11434/api",
            },
          },
        },
        -- Explicitly disable copilot
        copilot = {
          enable = false,
        },
      })

      vim.keymap.set("n", "<leader>cc", ":CodeCompanionChat<CR>", { desc = "Open Code Companion Chat" })
    end,
  },
}
