set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader=","
map <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

autocmd BufWritePre * :%s/\s\+$//e

set number
set tabstop=2 shiftwidth=2 expandtab
set backspace=2

set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nowrap
set textwidth=80
set linebreak

" Show ruler on column 80
set colorcolumn=80

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'benmills/vimux'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'kien/ctrlp.vim'

Plugin 'rking/ag.vim'

Plugin 'bling/vim-airline'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-surround'

Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-endwise'

Plugin 'ervandew/supertab'

Plugin 'sickill/vim-pasta'

Plugin 'honza/vim-snippets'

Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

Plugin 'tpope/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'

Plugin 'raichoo/haskell-vim'
Plugin 'enomsg/vim-haskellConcealPlus'
Plugin 'eagletmt/neco-ghc'

Plugin 'jpo/vim-railscasts-theme'

call vundle#end()

filetype plugin indent on
syntax on

try
  colorscheme railscasts
catch
endtry

" Match wombat colors in nerd tree
hi Directory guifg=#8ac6f2

" Searing red very visible cursor
hi Cursor guibg=red

" Use same color behind concealed unicode characters
hi clear Conceal

" Don't blink normal mode cursor
set guicursor=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set guitablabel=%M\ %t
endif
set t_Co=256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
