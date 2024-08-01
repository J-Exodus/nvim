return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    { "nvim-lua/plenary.nvim", opt = true },
    { "nvim-lua/popup.nvim", opt = true },
  },
  opts = {
    workspaces = {
      {
        name = "Vault",
        path = "~/vaults",
      },
    },
    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}
