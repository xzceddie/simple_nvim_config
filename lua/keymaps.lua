-- For switching between [] and {}
vim.keymap.set('n', "<space>{", ":.s/\\[/\\{/g<cr>", {noremap = true, silent = true})
vim.keymap.set('n', "<space>}", ":.s/\\]/\\}/g<cr>", {noremap = true, silent = true})
