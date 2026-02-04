return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                width = 25, -- Explorer の既定幅
              },
            },
          },
        },
      },
      terminal = {
        win = {
          position = "float",
          width = 0.7,
          height = 0.7,
          border = "rounded",
        },
      },
    },
  },
}
