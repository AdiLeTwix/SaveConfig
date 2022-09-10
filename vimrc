set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set noshowmode

autocmd vimenter * ++nested colorscheme gruvbox

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set nu

" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', {'as': 'dracula'}
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plugin 'morhetz/gruvbox'

Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:airline_theme='deus'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
