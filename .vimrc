if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'mcchrish/nnn.vim'
Plug 'scrooloose/nerdtree'
" vim-iced
" conjure
" clojure start
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
" clojure end
Plug 'tpope/vim-sensible'
Plug 'nanotee/zoxide.vim'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

set nu
" set rtp+=~/.vim/bundle/vimclojure
set ts=4 sw=4
set path+=**
set wildmenu
syntax on
