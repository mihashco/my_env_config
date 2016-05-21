set nocompatible
set hidden
filetype off
set t_Co=256
"tmux fix
set t_ut=
syntax on

"change tab to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/lightline'
Plugin 'vim-scripts/Command-T'
Plugin 'vim-scripts/vim-javacomplete2'
Plugin 'vim-scripts/argwrap.vim'
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
call vundle#end()    
filetype plugin indent on

"lightline setup
set laststatus=2

"command-t setup go to the plugin dir and invoke: "rake make"
map <C-p> :CommandT<CR>
"setup directory ignores
"setup files excludes

"vim-javacomplete2 setup

"argwrap setup

"buffergator setup
map <F6> :BuffergatorToggle<CR>
"ctrlsf setup

"buftabline setup

"LustyExplorer setup
map <C-f> :LustyBufferGrep<CR>

"vim multiple cursors setup
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"ycm setup
"Before using it you must go to the .vim/bundle/youcompleteme:
"./install.py --clang-completer
let g:ycm_confirm_extra_conf = 0
nmap <C-g> :YcmCompleter GoTo<CR>
nmap <C-t> :YcmCompleter GetType<CR>

"nerdtree setup
nnoremap <F3>  :NERDTreeToggle<CR>
nnoremap <C-\> :NERDTreeFocus<CR>
let NERDTreeWinSize = 40
let g:NERDTreeMapOpenVSplit = '<C-v>'
let g:NERDTreeMapOpenSplit = '<C-h>'
"nerdtree commenter

"Gundo setup
nnoremap <F4> :GundoToggle<CR>

"Taglist setup
nnoremap <F5> :TlistToggle<CR>
let Tlist_Use_Right_Window   = 1

"Silver Searcher
"pacman -S the_silver_searcher
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	let g:ctrlp_use_caching = 0
endif
nnoremap F :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"Put some TODO's here: 
"1. Add a shortcut to switch focus directyl to the nerdtree 
"2. Add a shortcut to switch focus to the main code window
"3. If the nerdtree is opened buffgator should split vertically nerdtree
"window and opens at the top of it.
"4. If the buffgator is opened nerdtree should split vertically buffgator
"window and opend at the bottom of it.
"5. Setup java completion because it is not working properly yet!

"color scheme settings
colors luna
