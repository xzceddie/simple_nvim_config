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

vim.cmd([[ vnoremap <space>y "*y ]]) -- copy to the system clipboard
vim.cmd([[ noremap <space>f "lua vim.lsp.buf.format()" ]])

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
