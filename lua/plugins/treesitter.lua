-- treesitter setup
require('nvim-treesitter.configs').setup {
    ensure_installed = "all",
    highlight = {
        enable = true
        -- enable = false
    },
    indent = {
        enable = true;
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<leader><space>",
            node_incremental = "<leader><space>",
            scope_incremental = false,
            node_decremental = "<bs>"
        }
    },
    -- rainbow = {
    --     enable = true,
    --     -- list of languages you want to disable the plugin for
    --     disable = {'jsx'},
    --     -- Which query to use for finding delimiters
    --     query = 'rainbow-parens',
    --     -- Highlight the entire buffer all at once
    --     strategy = require('ts-rainbow').strategy.global,
    -- }
}
