set nocompatible              " required
filetype off                  " required


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" make sure using single quotes
"Plug 'gmarik/Vundle.vim'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
"Plug 'nvie/vim-flake8'
"Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" see the docstring of the folded code
let g:SimpylFold_docstring_preview=1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
"set autoindent

"au BufNewFile,BufRead *.py
    "\ set tabstop=4 |
    "\ set softtabstop=4 |
    "\ set shiftwidth=4 |
    "\ set expandtab |
    "\ set autoindent |
    "\ set fileformat=unix |

"au BufNewFile,BufRead *.js,*.html,*.css, *.php
    "\ set tabstop=4 |
    "\ set softtabstop=4 |
    "\ set shiftwidth=4 |

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
" highlights the badwhitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\S\zs\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu
set ignorecase
set smartcase
set clipboard=unnamedplus

" set editing-mode vi

" to open nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" show a visual line under the cursor's current line
set cursorline
set showmatch "for matching braces


" enable vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified=1
set laststatus=2
set hlsearch

" map nohl to enter
nnoremap <silent> <CR> :nohl<CR>

"some more keymaps
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

syntax enable
set background=dark
set mouse=a
colorscheme solarized

"for javascript plugin
let g:javascript_plugin_jsdoc = 1

"for ignoring git and nodemodules in ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime
