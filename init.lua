vim.opt.mouse=a
vim.g.mapleader=","
vim.opt.cursorline=true
vim.opt.cursorcolumn=true
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.termguicolors=true

vim.g.UltiSnipsExpandTrigger='<c-l>'
vim.g.EasyMotion_smartcase=1
vim.Tlist_Use_Right_Window=1
vim.cmd[[ filetype plugin indent on ]]
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true


-- Plugs
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
	Plug 'davidhalter/jedi-vim'
	Plug 'morhetz/gruvbox'
	Plug 'tmhedberg/SimpylFold'
	Plug 'preservim/nerdtree'
	Plug 'easymotion/vim-easymotion'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Raimondi/delimitMate'
	Plug 'frazrepo/vim-rainbow'
	Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'davidgranstrom/nvim-markdown-preview'
	Plug 'mechatroner/rainbow_csv'
	Plug 'ryanoasis/vim-devicons'
	Plug 'jiangmiao/auto-pairs'
	Plug 'Yggdroot/indentLine'
	Plug 'ayu-theme/ayu-vim'
    Plug 'tpope/vim-surround'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'ThePrimeagen/vim-be-good'
	Plug 'voldikss/vim-floaterm'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
	
	-- enable ncm2 for all buffers
	-- autocmd BufEnter * call ncm2#enable_for_buffer()
	-- IMPORTANT: :help Ncm2PopupOpen for more information
	vim.cmd("set completeopt=noinsert,menuone,noselect")
	
	-- NOTE: you need to install completion sources to get completions. Check
	-- our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'

    Plug 'psliwka/vim-smoothie'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'simrat39/symbols-outline.nvim'
    Plug 'luisiacc/gruvbox-baby'
	Plug 'williamboman/nvim-lsp-installer'
    Plug 'numToStr/Comment.nvim'
    Plug 'nvim-treesitter/nvim-treesitter-context'
    Plug( 'Exafunction/codeium.vim', { [ 'branch' ] = 'main' })
vim.call('plug#end')

vim.api.nvim_set_keymap('n', "<space><space>", "<Plug>(easymotion-s2)", {noremap = true, silent = true})

vim.cmd([[ vnoremap <space>y "*y ]])
vim.cmd([[ noremap <space>f "lua vim.lsp.buf.format()" ]])


-- For switching between [] and {}
vim.keymap.set('n', "<space>{", ":.s/\\[/\\{/g<cr>", {noremap = true, silent = true})
vim.keymap.set('n', "<space>}", ":.s/\\]/\\}/g<cr>", {noremap = true, silent = true})

vim.cmd([[ autocmd vimenter * hi Comment cterm = italic gui = italic ]])
vim.cmd([[ autocmd vimenter * hi Statement cterm = italic gui = italic ]])
vim.cmd([[ autocmd vimenter * TSEnable highlight ]])
vim.cmd([[ autocmd vimenter * hi Normal ctermbg=none guibg=none ]])

vim.cmd([[ set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/ ]])
vim.cmd([[ let t_Co=256 ]])
vim.cmd([[let &t_ZH="\e[3m"]])
vim.cmd([[let &t_ZR="\e[23m"]])
vim.cmd([[ colorscheme gruvbox-baby ]])
vim.cmd([[ set encoding=UTF-8 ]])
vim.cmd([[ set conceallevel=1 ]])
vim.g.indentLine_conceallevel=1

vim.cmd([[ let g:airline#extensions#hunks#enabled = 0 ]])

vim.g.floaterm_keymap_new='<F7>'
vim.g.floaterm_keymap_prev='<F8>'
vim.g.floaterm_keymap_next='<F9>'
vim.g.floaterm_keymap_toggle='<F5>'
vim.g.floaterm_width=250
vim.g.floaterm_height=50



require('lualine').setup({
    tabline = {
        lualine_a = {},
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    sections = {lualine_c = {'lsp_progress'}}
})
require('symbols-outline').setup()


-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('v', "Y", ":w !pbcopy<Cr>", {noremap = true, silent = true})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f',function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

--------------------------------------------------------------
-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['clangd'].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

require('lspconfig')['pyright'].setup {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

-- require('lspconfig')['sumneko_lua'].setup {
--     on_attach = on_attach,
--     flags = lsp_flags,
--     capabilities = capabilities
-- }
require('lspconfig')['lua_ls'].setup { -- this is to fix the deprecated warning of sumneko_lua
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

require('Comment').setup()


require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
vim.cmd[[hi TreesitterContextBottom gui=underline guisp=Grey]]
vim.cmd[[hi TreesitterContextLineNumberBottom gui=underline guisp=Grey]]


