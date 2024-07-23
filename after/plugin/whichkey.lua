vim.g.mapleader=" "  -- Map leader to space key
vim.g.localleader=" "
vim.keymap.set("n", "-", vim.cmd.Ex, { desc = "File Exporer"} )  -- Map - key to open file explorer

local wk = require("which-key")
wk.add({

-- Telescope keymaps
  { "<leader>f", group = "file" }, -- group
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  {'<leader>fg', "<cmd>Telescope live_grep<cr>", desc = "Grep", mode = "n" },
  {'<leader>fb', "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n" },
  {'<leader>fh', "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n" },

-- Trouble keymaps
  { "<leader>c", group = "code" }, -- group
  {"<leader>ct", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble", silent = true, noremap = true, mode = "n" },
  {"<leader>cw", "<cmd>Trouble workspace_diagnostics<cr>", desc = "Workspace Diagnostics", silent = true, noremap = true, mode = "n" },
  {"<leader>cd", "<cmd>Trouble document_diagnostics<cr>",  desc = "Document Diagnostics", silent = true, noremap = true, mode = "n"},
  {"<leader>cl", "<cmd>Trouble loclist<cr>",  desc = "Location List", silent = true, noremap = true, mode = "n"},
  {"<leader>cq", "<cmd>Trouble quickfix<cr>",  desc = "Quick Fix", silent = true, noremap = true, mode = "n"},
  {"gR", "<cmd>TroubleToggle lsp_references<cr>",  desc = "LSP Reference", silent = true, noremap = true, mode = "n"},

-- Buffer keymaps
  { "<leader>b", group = "buffer" }, -- group
  { "<leader>bn", "<cmd>bn<cr>", desc = "Next Buffer", mode = "n" },
  { "<leader>bp", "<cmd>bp<cr>", desc = "Previous Buffer", mode = "n" },
  { "<leader>bc", "<cmd>bd<cr>", desc = "Close Buffer", mode = "n" },

-- Miscellanous keymaps


  -- { "<leader>fb", function() print("hello") end, desc = "Foobar" },
  -- { "<leader>fn", desc = "New File" },
  -- { "<leader>f1", hidden = true }, -- hide this keymap
  { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
  { "<leader>b", group = "buffers", expand = function()
      return require("which-key.extras").expand.buf()
    end
  },
  })
