set nocompatible
filetype off

" -----------------------------------------------------------------------------
" Load Vundle
" -----------------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" -----------------------------------------------------------------------------
" Leader
" -----------------------------------------------------------------------------
let mapleader=","

" -----------------------------------------------------------------------------
" NERDTree
" -----------------------------------------------------------------------------
map <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Prompt for a command to run
map <leader>vp :VimuxPromptCommand<CR>

autocmd BufWritePre * :%s/\s\+$//e
set autowriteall
set noswapfile

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
" tmux
" Run current rspecs
map <Leader>rs :call VimuxRunCommand("clear; bundle exec rspec " . bufname("%"))<CR>
" Run rspecs
map <Leader>rb :call VimuxRunCommand("clear; bundle exec rspec ")<CR>

" Run all npm tests
map <Leader>nt :call VimuxRunCommand("clear; npm test ")<CR>

" Run last command
map <Leader>rl :VimuxRunLastCommand<CR>"

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_show_hidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

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

" -----------------------------------------------------------------------------
" Syntax highlight
" -----------------------------------------------------------------------------
" Markdown
Plugin 'tpope/vim-markdown'

" Ruby
Plugin 'vim-ruby/vim-ruby'
au BufRead,BufNewFile *.jbuilder setfiletype ruby

" Rails
Plugin 'tpope/vim-rails'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Javascript
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'

" JSX
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Html
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'

" Less
Plugin 'groenewege/vim-less'

" Haskell
Plugin 'raichoo/haskell-vim'
Plugin 'enomsg/vim-haskellConcealPlus'
Plugin 'eagletmt/neco-ghc'

" Docker
Plugin 'docker/docker', {'rtp': '/contrib/syntax/vim/'}

" Terraform
Plugin 'hashivim/vim-terraform'
" -----------------------------------------------------------------------------

Plugin 'altercation/vim-colors-solarized'

call vundle#end()
" -----------------------------------------------------------------------------

filetype plugin indent on
syntax on

" -----------------------------------------------------------------------------
" Color Scheme
" -----------------------------------------------------------------------------
try
  syntax enable
  set background=dark
  colorscheme solarized
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
