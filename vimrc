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
Bundle 'gmarik/vundle'
" Vundle commands:
" 	to install selected bundles :BundleInstall
" 	to update plugins	    :BundleUpdate
" 	to clean unuded plugins     :BundleClean


" My Bundles here:
"
" original repos on github
" 
Bundle 'majutsushi/tagbar'
" Displays tags in a window, ordered by class etc. 
" more info: majutsushi.github.io/tagbar/
" Opens tags window with F8
nmap <F8> :TagbarToggle<CR>

Bundle 'vim-scripts/Align'
" Let's you align statements on their equal signs, make comment boxes,
" align comments, align declarations, etc.
" commands: 
" 	:Align - the basic alignment command
" 	:AlignCtrl - provides options for the next call to :Align
" 	:AlignMaps - many three or four key maps which support aligning
" 	    C/C++ style declarations, expressions, coments, numbers,
" 	    tables based on tabs or spaces, and more.
" 	:AutoAlign uses the Align function to align =s as you type
" 	:help align
" more info: http://www.vim.org/scripts/script.php?script_id=294
"TODO - add command for autoaligning

Bundle 'Raimondi/delimitMate'
" Provides automatic closing of quotes, parenthesis, brackets, etc.,
" besides some other related features that should make your time in
" insert mode a little bit easier, like syntax awareness (will not
" insert the closing delimiter in comments and other configurable
" regions), and expansions (off by default), and some more.
" Most of the features can be modified or disabled permanently, using
" global variables, or on a FileType basis, using :autocmd.

Bundle 'tpope/vim-ragtag'
" A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more
" Enhances surround.vim
" More info: http://www.vim.org/scripts/script.php?script_id=1896
"TODO - try it

Bundle 'tpope/vim-surround'
" Provides mappings to easily delete, change and add parantheses, 
" brackets, quotes, XML tags in pairs.
" HOW TO USE:
" Press cs"' inside "Hello world!" => 'Hello world!'
" Press cs '<q> to change it to <q>Hello world!</q>
" To go full circle, press cst" to get "Hello world"
" To remove the delimiters entirely, press ds"
" Now with the cursor on "Hello", press ysiw] ( iw is a text object) =>
" [Hello] world!
" Let's make that braces and add some space (use } insread of { for no sapce): cs]{ => { Hello } world!
" Now wrap the entire line in parentheses with yssb or yys) => ({ Hello } world!)
" Revert to original text: ds{ds) => Hello world!
" Emphasize hello: ysiw<em> => <em>Hello</em> world!
" Finally, let's try out visual mode. Press a capital V (for linevise
" visual mode) followed by S<p class="important">. =>
" <p class="important">
"   <em>Hello</em> world!
" </p>
" NOTE: The . command will work with ds, cs and yss if you install repeat.vim
" more info: https://github.com/tpope/vim-surround
" TODO: play around with it.
" TODO: add repeat.vim to support . repeating last map as a whole.

Bundle 'tpope/vim-repeat'
" Repeat.vim remaps . in a way that plugins can tap into it.
"
" Adding support to a plugin is generally as simple as the following command at
" the end of your map functions.
" silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
"
" more info: http://www.vim.org/scripts/script.php?script_id=2136
" TODO: test it with surround commands.
" TODO: find out about "command after your map function"

" 1999-12-24
" NOTE: CTRL+a decrements number by one
" NOTE: CTRL+x increments number by one
Bundle "tpope/vim-speeddating"
" increments/decrements date formats with commands CTRL-X/CTRL-A
" d<C-A> sets the timestamp under the cursor to the current time. d<C-X> does
" the same, but uses UTC rather than the local time.
" 
" more info: http://www.vim.org/scripts/script.php?script_id=2120

Bundle "tpope/vim-aboish"
" Advanded substitution for words and their forms like:
" Address to Reference
"
" :Subvert/address{,es}/reference{,s}/g
"
" Blog to Post (you can just do this with a regular :s also)
"
" :Subvert/blog{,s}/post{,s}/g
"
" Child to Adult
"
" :Subvert/child{,ren}/adult{,s}/g
" 
" MY FAVOURITE: Want to turn fooBar into foo_bar?
" Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc),
" snake_case (crs), and UPPER_CASE (cru) are all just 3 keystrokes away. These
" commands support repeat.vim.
" TODO: Play around with commands crs crm crc crs cru

Bundle 'tpope/vim-commentary'
" Comment stuff out. Use gcc to comment out a line (takes a count), 
" gc to comment out the target of a motion (for exaple, gcap to comment out a
" paragraph), and gc in visual mode to comment out the selection.
" more info: http://www.vim.org/scripts/script.php?script_id=3695

Bundle 'Lokaltog/vim-powerline'
" Powerline is a utility plugin which allows you to create better-looking,
" more functional vim statuslines. 
" :help Powerline - instructions on how to configure it.
" TODO: configure powerline to be nice.
" TODO: set laststatus=2
" TODO: in txmux powerline looks like crap, whats wrong?
" A: you need to tell tmux that it has 256-color capabilities. Add this to
" yout tmux.conf to solve this issue:
" set -g default-terminal "screen-256color"

Bundle 'airblade/vim-rooter'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'

" Syntax plugins
" Bundle 'hail2u/vim-css3-syntax'
" Bundle 'othree/html5-syntax.vim'
" Bundle 'tpope/vim-markdown'
" Bundle 'jelera/vim-javascript-syntax'
" Bundle 'tpope/vim-haml'
" Bundle 'jQuery'




Bundle 'altercation/vim-colors-solarized'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

" filetype plugin indent on     " required!

" Change the leader o be comma vs slash
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

