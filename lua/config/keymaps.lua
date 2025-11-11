-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', require("telescope.builtin").find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', require("telescope.builtin").live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', require("telescope.builtin").buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', require("telescope.builtin").help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>/", require("telescope.builtin").current_buffer_fuzzy_find, { desc = 'Telescope grep within file' })

-- LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to Definition" }))
    vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Show Hover" }))
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename Symbol" }))
    vim.keymap.set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "Find References" }))
  end,
})

