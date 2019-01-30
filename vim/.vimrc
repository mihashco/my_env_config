set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=119
set autoindent
set fileformat=unix

set list lcs=tab:\|\.

set nocompatible
set hidden
filetype off
set t_Co=256
"tmux fix
set t_ut=
syntax on

set nu
set colorcolumn=160

set noswapfile
set clipboard=unnamedplus

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/lightline'
Plugin 'vim-scripts/Command-T'
Plugin 'scrooloose/syntastic'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-scripts/buftabline'
Plugin 'vim-scripts/LustyExplorer'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'notpratheek/vim-luna'
Plugin 'acoustichero/simple_dark'
Plugin 'visi-pivi-sivi/leerkan-vim-colors'
Plugin 'mhinz/vim-janah'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'Yggdroot/indentLine'
Plugin 'hari-rangarajan/CCTree'
Plugin 'airblade/vim-gitgutter'
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'dkprice/vim-easygrep'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/Conque-GDB'
call vundle#end()

"Autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

filetype plugin indent on

"lightline setup
set laststatus=2
set runtimepath^=~/.vim/bundle/ctrlp.vim

"command-t setup go to the plugin dir and invoke: "rake make"
"or ruby extconf.rb -> make
"map <C-p> :CommandT<CR>
"setup directory ignores
"setup files excludes
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.out

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|out)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_extensions=['tag', 'buffertag', 'dir']

"buffergator setup
map <F6> :BuffergatorToggle<CR>
let g:buffergator_hsplit_size = 10

"Folding
set foldmethod=indent
set foldlevel=99

"LustyExplorer setup
map <C-f> :LustyBufferGrep<CR>

"vertical line indent
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

"Before using it you must go to the .vim/bundle/youcompleteme:
"./install.py --clang-completer
let g:ycm_confirm_extra_conf = 0
"nmap <C-g> :YcmCompleter GoTo<CR>
"nmap <C-t> :YcmCompleter GetType<CR>

"nerdtree setup
nnoremap <F3>  :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFocus<CR>
let NERDTreeWinSize = 40
let NERDTreeShowBookmarks = 1
let g:NERDTreeMapOpenVSplit = '<C-v>'
let g:NERDTreeMapOpenSplit = '<C-h>'
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeChDirMode=2

"Taglist setup
nnoremap <F5> :TlistToggle<CR>
let Tlist_Use_Right_Window   = 1
let Tlist_WinWidth = 45
let Tlist_Show_One_File = 1

"Custom keymap
nnoremap <F7> :bprevious<CR>
nnoremap <F8> :bnext<CR>
nnoremap <C-S-Right> :vertical resize +5<CR>
nnoremap <C-S-Left> :vertical resize -5<CR>

"Reload vim after .vimrc modification
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"Remove all trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"let g:ackprg='ag --cc'
"nnoremap F :Ack "\b<C-R><C-W>\b"<CR>:cw<CR>

set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_catching = 0
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

set backspace=indent,eol,start
map <A-]> :vsp<CR>:exec("tag ".expand("<cword>")) "

"ConqueTerm settings
nnoremap <F2> :ConqueTerm bash<CR>

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
" Close omnicomplete preview automatically
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"color scheme settings
colors gruvbox
set background=dark
hi SpecialKey ctermfg=66 guifg=#649A9A
