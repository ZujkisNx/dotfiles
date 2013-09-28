echo 'lol'
" Info
" Leader - ","
" Reload vimrc - leader + V
" select word under the cursor - space
" exit from insert mode to normal mode - jj 
" :W = :w
" ctrl-jklm  changes to that split
" Open NERD tree - leader + n
" 

" ============================================
" Plugins
" ============================================
" vundle - managing plugins
" 
" vim-fugitive - best Git wrapper of all time
"     commands: :Gedit - view any blob, tree or tag in repository
"               :Gstatus - git status
"               :Gdiff - git diff
"               :Gsplit
"               :Gcommit - git commit
"               :Gblame - git blame
"               :Gmove - git mv
"               :Gremove - git rm
"               :Ggrep - git grep
"               :Glog - loads all previous revisions of a file into the
"               quickfix list so you can iterate over them and watch
"               the file evolve
"               :Gread - git checkout -- filename
"               :Gwrite - writes to both the work tree and index
"               :Gbrowse - open the current file on GitHub
"               

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
" Vundle commands:
" 	to install selected bundles :BundleInstall
" 	to update plugins	    :BundleUpdate
" 	to clean unuded plugins     :BundleClean
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" 
" displays tags in a window, ordered by class etc. 
" more info: majutsushi.github.io/tagbar/
Bundle 'majutsushi/tagbar'
" Opens tags window with F8
nmap <F8> :TagbarToggle<CR>

Bundle 'altercation/vim-colors-solarized'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

" filetype plugin indent on     " required!

" Change the leader to be comma vs slash
let mapleader=","

" ============================================
" My stuff from learning vim the hard way
:map <space> viw

" jj instead of ESC in insert mode. Helps to keep hands on the home row.
:imap jj <Esc>
" ============================================

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

" Allow saving of files as sudo when I forgot to start vim using sudo 
cmap W! w !sudo tee % >/dev/null
" The >/dev/null part explicitly throws away the standard output, since we
" don't need to pass anything to another piped command.




" Place for spliting screens

" Place for better movement between splits
" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" and lets make these all work in insert mode too ( <C-O> makes next cmd
"  happen as if in command mode )
imap <C-W> <C-O><C-W>


" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

set nolist                    " no whitespace

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" Open NerdTree
map <leader>n :NERDTreeToggle<CR>

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

"""" Display
if has("gui_running")
    " Remove menu bar
    set guioptions-=m

    " Remove toolbar
    set guioptions-=T
endif

colorscheme ir_black "molokai

" Paste from clipboard
map <leader>p "+p

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

