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
    Plug 'tpope/vim-fugitive'
    Plug( 'Exafunction/codeium.vim', { [ 'branch' ] = 'main' })
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-tree/nvim-tree.lua'
vim.call('plug#end')

require( "options" )
require( "keymaps" )
require( "plugins.easymotion" )
require( "plugins.floaterm" )
require( "plugins.lualine" )
require('symbols-outline').setup()
require( "plugins.cmp" )
require( "plugins.lspconfig" )
require( "plugins.treesitter" )
require( "plugins.treesitter-textobject" )
require( "plugins.treesitter_context" )
require( "plugins.Comment" )
require( "plugins.telescope" )
require( "plugins.gitsigns" )
require( "plugins.nvim-tree" )
