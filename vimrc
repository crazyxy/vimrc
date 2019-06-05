" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'flazz/vim-colorschemes'
" Plugin 'valloric/youcompleteme'
Plugin 'morhetz/gruvbox'
Plugin 'myusuf3/numbers.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'rip-rip/clang_complete'
call vundle#end()

" Initialize the plugin
set background=dark
colorscheme gruvbox

map <C-n> :NERDTreeToggle<CR>

syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch 
set ignorecase

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

map <space> /
map <c-space> ?

let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif
