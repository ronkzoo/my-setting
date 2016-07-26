
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
Plugin 'perl-support.vim'
Plugin 'surround.vim'
Plugin 'highlight.vim'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'szw/vim-tags'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'vim-buffergator'
Bundle 'Gundo'

" Avoid a name conflict with L9
call vundle#end()
filetype plugin indent on

"
" default config
"
let g:Powerline_symbols = 'fancy'
let g:vim_tags_auto_generate = 1
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#branch#enabled = 1
let g:airline_detect_modified = 1



set nu
set tabstop=4
set ts=4
set sw=4
set sts=4
set mouse=a 
set smartindent 
set cindent
set hlsearch
set clipboard=unnamed
set title
set laststatus=2
set ignorecase
set shiftwidth=4
set autoread 
set autochdir
set exrc
set secure
color desert 
syn on 
set noantialias nu

:let mapleader=","

" insert / normalmode keyboradline 
:autocmd InsertEnter * set cul 
:autocmd InsertLeave * set nocul 
:autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

" mapping key 
nnoremap <Tab> :NERDTreeToggle <CR> 
nnoremap <F5>  :TlistToggle<CR>

" ctrlP config 
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
"  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
"\}
" 'c' - the directory of the current file.
let g:ctrlp_working_path_mode = 'rc'

" 단축키를 리더 키로 대체
nmap <leader>p :CtrlP<cr>

" 여러 모드를 위한 단축키
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
nmap <leader>1 :Gvdiff <cr>

"tagList 
let Tlist_Use_Right_Window = 1
