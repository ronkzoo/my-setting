
set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp':'newL9'}
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'bling/vim-airline'
Plugin 'The-NERD-tree'
Plugin 'javascript.vim'
Plugin 'perl-support.vim'
Plugin 'surround.vim'
Plugin 'Gundo'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'

" Avoid a name conflict with L9
call vundle#end()
filetype plugin indent on

"
" default config
"
set nu
set tabstop=4
set ts=4
set sw=4
set sts=4
set mouse=a 
set smartindent 
set cindent
set hlsearch
color desert 
syn on 
set noantialias nu

" insert / normalmode keyboradline 
:autocmd InsertEnter * set cul 
:autocmd InsertLeave * set nocul 

" mapping key 
nnoremap <Tab> :NERDTreeToggle <CR>
nnoremap <F5>  :GundoToggle <CR>


