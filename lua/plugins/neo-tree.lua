return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true,
      },
    },
    window = {
      width = 32,
      mappings = {
        ["<space>"] = "none",
      },
    },
  },
  keys = {
    {
      "<leader>e",
      ":Neotree toggle filesystem left<CR>",
      desc = "Toggle file explorer",
    },
  },
}

