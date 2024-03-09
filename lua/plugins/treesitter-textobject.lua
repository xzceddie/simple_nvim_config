require( "nvim-treesitter.configs" ).setup {
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
                ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
                ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
                ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },
                ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
                ["if"] = { query = "@function.inner", desc = "Select inner part of a function" },
                ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
                ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },
            }
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>na"] = "@parameter.inner",
                ["<leader>nf"] = "@function.outer",
            },
            swap_previous = {
                ["<leader>pa"] = "@parameter.inner",
                ["<leader>pf"] = "@function.outer",
            },
        }
    }
}
