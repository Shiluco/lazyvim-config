return {
  -- gitsigns
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  -- git.nvim (blame / browse)
  {
    "dinhhuy258/git.nvim",
    keys = {
      {
        "<leader>gb",
        function()
          require("git").blame()
        end,
        desc = "Git Blame",
      },
      {
        "<leader>go",
        function()
          require("git").browse()
        end,
        desc = "Git Browse",
      },
    },
    config = function()
      require("git").setup({
        keymaps = {
          blame = "<leader>gb",
          browse = "<leader>go",
        },
      })
    end,
  },

  -- lazygit
  {
    "kdheepak/lazygit.nvim",
    cmd = { "Lazygit", "LazygitConfig", "LazygitCurrentFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>g", "<cmd>Lazygit<cr>", desc = "Lazygit" },
    },
  },

  -- diffview
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>df", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
    },
    opts = {},
    config = function(_, opts)
      require("diffview").setup(opts)

      -- Diffview バッファ内だけ q で閉じる
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "DiffviewFiles", "DiffviewFileHistory" },
        callback = function(ev)
          vim.keymap.set("n", "q", "<cmd>DiffviewClose<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Diffview Close",
          })
        end,
      })
    end,
  },
}
