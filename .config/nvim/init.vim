" Vim-Plug initializer
set guifont=FiraCode\ Nerd\ Font\ Mono

call plug#begin('~/.config/nvim/plugins')

Plug 'nightsense/carbonized'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': ':!./install.py --all' }
Plug 'w0rp/ale'
Plug 'liuchengxu/space-vim-theme'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mxw/vim-jsx'
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Colorscheme initiation
set termguicolors
set background=dark
" colorscheme carbonized-dark

" Powerline colors
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme="violet"
" airline symbols
let g:airline_left_sep = "\uE0B0"
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" General vim settings
set number relativenumber
set nu rnu
set ruler
set cursorline
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" exit terminal insert mode
tnoremap <C-\> <C-\><C-n>

" Set proper tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set laststatus=2

" Disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Autocomplete settings
let g:deoplete#enable_at_startup = 1

" Vim Snippets config
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Syntastic
let g:ale_sign_error = '█'
let g:ale_sign_warning = '█'
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_rust_rls_executable = 'rls'
let g:ale_linters = {'javascript': ['eslint'], 'rust': ['cargo']}
let g:ale_fixers = {'javascript': ['eslint'], 'rust': ['rustfmt'], 'ocaml': ['ocamlformat']}
let g:ale_fix_on_save = 1

" Colorscheme settings
let g:space_vim_dark_background = 234
colorscheme space_vim_theme
" guifg #5c6370
hi Comment guifg=#5C6370 ctermfg=59 cterm=italic guibg=none ctermbg=none
hi LineNr ctermbg=NONE guibg=NONE
hi ALEErrorSign guibg=none guifg=#292b2e
hi ALEWarningSign guibg=#3498db guifg=#292b2e

"hi Normal guibg=none
"hi NonText guibg=none
" hi SignColumn guibg=none
" Floaterm config
let g:floaterm_keymap_toggle = '<C-space>'

" FZF
map <C-f> :Telescope find_files<CR>

" change ident for jsx
autocmd FileType javascript.jsx setlocal shiftwidth=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
