" --Vim-Plug--
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'justinmk/vim-sneak'
Plug 'terryma/vim-smooth-scroll'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
call plug#end()
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 17, 3)<cr>
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 17, 3)<cr>
set guifont=Liberation\ Mono\ for\ Powerline\ 10 

" --Powerline--
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim
" Always show statusline
set laststatus=2
" Use 256 colours 
set t_Co=256

"--Settings--
set nu
set relativenumber
set showcmd 
set hidden
set nocompatible

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

inoremap jj <ESC>

"--Bindings--
cmap w!! w !sudo tee > /dev/null %

"--ColorScheme--
hi SignColumn guibg=none
hi SignColumn ctermbg=none
hi SignatureMarkText ctermbg=none
hi SignatureMarkText ctermfg=1 
hi LineNr ctermfg=DarkGray
hi CursorLineNr ctermbg=Black
hi CursorLineNr ctermfg=none
