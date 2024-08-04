return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  cmd = {
    "TestNearest",
    "TestFile",
    "TestSuite",
    "TestLast",
    "TestVisit",
  },
  keys = {
    { "<leader>tn", "<cmd>TestNearest<cr>", { silent = true, description = "Run nearest test" } },
    { "<leader>tf", "<cmd>TestFile<cr>", { silent = true, description = "Test file" } },
    { "<leader>ts", "<cmd>TestSuite<cr>", { silent = true, description = "Run test suite" } },
    { "<leader>tv", "<cmd>TestVisit<cr>", { silent = true, description = "Visit test" } },
    { "<leader>tl", "<cmd>TestLast<cr>", { silent = true, description = "Run last test" } },
  },
  config = function()
    vim.cmd("let test#strategy = 'vimux'")
  end,
}
