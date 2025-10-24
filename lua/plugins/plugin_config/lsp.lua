-- Example for TypeScript with packer.nvim
vim.lsp.enable('pyright')

-- Example of nvim-cmp configuration
local cmp = require('cmp')
cmp.setup({
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- Your LSP source
    { name = 'buffer' },   -- Buffer source
    { name = 'path' }      -- Path source
  }),
})


vim.keymap.set('i', '<C-Space>', cmp.complete, { desc = 'Open completion' })
vim.keymap.set('i', '<CR>', cmp.confirm, { desc = 'Confirm completion' })
vim.keymap.set('i', '<C-n>', cmp.select_next_item, { desc = 'Next completion item' })
vim.keymap.set('i', '<C-p>', cmp.select_prev_item, { desc = 'Previous completion item' })
