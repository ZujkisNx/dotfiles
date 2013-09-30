" Info
" Leader - ","
" Reload vimrc - leader + V
" select word under the cursor - space
" exit from insert mode to normal mode - jj
" :W = :w
" ctrl-jklm  changes to that split
" Open NERD tree - leader + n
"
"
" ============================================
" Requirements
" ============================================
" apt-get install vim curl git exuberent-ctags

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
" TODO: not working becouse exuberant is not installed

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
"TODO cosider going for tabular plugin

Bundle 'Raimondi/delimitMate'
" Provides automatic closing of quotes, parenthesis, brackets, etc.,
" besides some other related features that should make your time in
" insert mode a little bit easier, like syntax awareness (will not
" insert the closing delimiter in comments and other configurable
" regions), and expansions (off by default), and some more.
" Most of the features can be modified or disabled permanently, using
" global variables, or on a FileType basis, using :autocmd.

" Bundle 'tpope/vim-ragtag'
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

Bundle "tpope/vim-abolish"
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

Bundle 'bling/vim-airline'
" lean & mean status/tabline for vim that's light as air.

" NOTE: disabled for testing vim-airline
" Bundle 'Lokaltog/vim-powerline'
" Powerline is a utility plugin which allows you to create better-looking,
" more functional vim statuslines.
" :help Powerline - instructions on how to configure it.
" TODO: configure powerline to be nice.
" TODO: set laststatus=2
"
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" For fancy symbols
" let g:Powerliine_symbols = 'fancy'

" To remove ^B from powerline
set encoding=utf-8
set termencoding=utf-8
set fileencodings=         " don't do any encoding conversion

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" NOTE: neveikia..

" TODO: in txmux powerline looks like crap, whats wrong?
" A: you need to tell tmux that it has 256-color capabilities. Add this to
" yout tmux.conf to solve this issue:
" set -g default-terminal "screen-256color"
" also need to add line to bashrc
" export TERM=xterm-256color

" Bundle 'zhaocai/linepower'
" powerlines enchantment
" TODO: isntallation instructions in https://github.com/vim-scripts/linepower.vim
" need to replace the json files under config in ~/.config/powerline
" TODO: test if it works.

Bundle 'airblade/vim-rooter'
" Changes Vim working directory to project root (identify by presence
" of directory or file"
"
" By default you don't need to do anything: vim-rooter will change the
" working directory automatically.
" You can always invoke vim-rooter manually with <Leader>cd.
"
" You can change the manual-invocation mapping by adding this to your .vimrc:
" map <silent> <unique> <Leader>foo <Plug>RooterChangeToRootDirectory
" where <Leader>foo is the mapping you want.
" TODO: add command to manualy invoking root directory. 2 lines higher.

Bundle 'scrooloose/syntastic'
" Synastic is a syntax checking plugin that runs files through external
" syntax checkers and displays any resulting errors to the user.
"
" For python requires either flake8, pyflakes or pylint.
"
" Synastics idea of available checkers by running :SynasticInfo
" more info: https://github.com/scrooloose/syntastic
" TODO: install python checker
" How to jump between errors without using location list:
" 	:help :lnext
" 	:help :lprev
" FOR ease of use: check vim plugin - unimpaired
" TODO: add shortcut for syntex check

Bundle 'tpope/vim-unimpaired'
" pairs of handy bracket mappings
" more info on github
" TODO: see the :help unimpaired for mapings

Bundle 'kshenoy/vim-signature'
" Plugin to place, toggle and display marks.
" more info: https://github.com/kshenoy/vim-signature
"
"   m[a-zA-Z]    : Toggle mark
"   m<Space>     : Delete all marks
"   m,           : Place the next available mark
"   ]`           : Jump to next mark
"   [`           : Jump to prev mark
"   ]'           : Jump to start of next line containing a mark
"   ['           : Jump to start of prev line containing a mark
"   `]           : Jump by alphabetical order to next mark
"   `[           : Jump by alphabetical order to prev mark
"   ']           : Jump by alphabetical order to start of next line containing a mark
"   '[           : Jump by alphabetical order to start of prev line containing a mark
"
"   m[0-9]       : Toggle the corresponding marker
"   !@#$%^&*()
"   m<S-[0-9]>   : Remove all markers of the same type
"   ]-           : Jump to next line having same marker
"   [-           : Jump to prev line having same marker
"   m<BackSpace> : Remove all markers

Bundle 'kien/ctrlp.vim'
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"
" Basic usage:
"  Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find
"  	mode.
"  Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find
"  	MRU file mode.
"  Run :CtrlPMixed to search in Files, Buffers and MRU files at the
"	same time.
" Check :help :ctrlp-commands and :help ctrlp-extensions for other
" 	commands.
"
" Once CtrlP is open:
"    Press F5 to purge the cache for the current directory to get new
"    	files, remove deleted files and apply new ignore options.
"    Press <c-f> and <c-b> to cycle between modes.
"    Press <c-d> to switch to filename only search instead of full path
"    Press <c-r> to switch to regexp mode.
"    Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"    Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab
"    	or in a new split.
"    Use <c-n>, <c-p> to select the next/previous string in the
"    	prompt's history.
"    Use <c-y> to create a new file and its parent directories.
"    Use <c-z> to mark/unmark multiple files and <c-o> to open them.
" Run :help ctrlp-mappings or submit ? in CtrlP for more mapping help.
"
Bundle 'ervandew/supertab'
" Supertab is a vim plugin which allows you to use <Tab> for all your
" insert completion needs (:help ins-completion)

Bundle 'SirVer/ultisnips'
" snippets
" more info: http://www.vim.org/scripts/script.php?script_id=2715

" The trigger used to jump forward to the next placeholder.
" " NOTE: expansion and forward jumping can, but needn't be the same trigger
"
" Set ultisnips triggers
" NOT WORKING..
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

Bundle 'scrooloose/nerdtree'
" A tree explorer plugin for vim
" more info in github
"
" commands:
"   press o to opent he file in new buffer or open/close directory
"   press t to open the file in a new tab
"   press i to open the file in a new horizontal split
"   press s to open the file in a new vertical split
"   press p to go to parent directory
"   press r to refresh the current directory
"   press m to lauch nerdtree enu inside vim

Bundle 'YankRing.vim'
" Maintains a history of previous yanks
"
" A tutorial is included to take you through the various features of the
" plugin. After you installed the plugin just run:
"   :h yankring.txt
"   :h yankring-tutorial
"TODO: go throo tutorial



"Bundle 'tyru/undoclosewin'
" undo closing windows/tabs
" TODO: not working

" Bundle 'rhysd/open-pdf'
" convert pdf file to plain-text file, cache it and open it in vim
" commands:
"       :Pdf path/to/pdf-file converts, caches and opens the pdf-file.
"       :Unite pdf/history displays histories you have ever opened.
"
" Auto Conversion
"
    " When a pdf file is edited with :edit or :read, conversion from pdf to txt is
    " automatically executed and open the text file instead of pdf file. You must
    " set g:pdf_convert_on_edit or g:pdf_convert_on_read to 1 to enable these
    " features.
"
" Read doc/open-pdf.txt to get more information.
" TODO: not working.. 

Bundle 'mhinz/vim-startify'
" fancy start screen
" Commands:
"  in startify screen - v opens vertical split
"                       s opens horizontal split
"                       t opens in new tab

let g:startify_custom_header = [
 \ '             .8.                 ',
 \ '             888                 ',
 \ '             888l                        .8.            ',
 \ '            j8888.                       888            ',
 \ '           .888888.                      888l           ',
 \ '         .88888888.                     j8888.          ',
 \ '        .d8888888888b.                 .888888.         ',
 \ '      .d88888888888888b.             .88888888.         ',
 \ '     .888888888888888888b.          .d8888888888b.      ',
 \ '    .888888888888888888888        .d88888888888888b.    ', 
 \ '    8888888888888888888888       .888888888888888888b.  ', 
 \ '    888P""""""""""""""4888      .888888888888888888888  ', 
 \ '    `P`     .    .     `q`      8888888888888888888888  ', 
 \ '     `-..____:  :____..-`       888P""""""""""""""4888  ', 
 \ '             :  :               `P`     .    .     `q`  ', 
 \ '             :  :                `-..____:  :____..-`   ', 
 \ '             :  :                        :  :           ', 
 \ '             :  :                        :  :           ', 
 \ '             :  :                        :  :           ', 
 \ '           \(/\\)\/                    \(/\\)\/         ', 
 \ '',
 \ '',
 \ ]

" TODO
" Syntax plugins
" Bundle 'hail2u/vim-css3-syntax'
" Bundle 'othree/html5-syntax.vim'
" Bundle 'tpope/vim-markdown'
" Bundle 'jelera/vim-javascript-syntax'
" Bundle 'tpope/vim-haml'
" Bundle 'jQuery'




    " not so cool
    " shitty colors in terminal.. can get it to work..
    " Bundle 'altercation/vim-colors-solarized'
    " TODO not working.. try to fix :)"
    " Precision colorscheme for the vim text editor
    "
    " Modify .vimrc
    " syntax enable
    " set backgound=dark
    " colorscheme solarized


" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
" dependancy for fuzzyfinder

Bundle 'FuzzyFinder'
" buffer/file/command/tag/etc explorer with fuzzy matching
"TODO add bindings for commands
" :help FuzzyFinder



" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" requires ruby so not so cool.. 
" TODO: try to use neerd tree and fuzzy finder

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

" Solarized setup
syntax enable

colorscheme ir_black



" set background=dark
" let g:solarized_termcolors=16
" colorscheme solarized

"colorscheme jellybeans
"if $TERM =~ "-256color"
"    set t_Co=256
"endif
"let g:solarized_termcolors=256
" ==========================================================
"syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
"set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
" set wildmode=full             " <Tab> cycles between all matching choices.
set wildmode=list:longest,full " command <tab> completion, list matches, then longest common part, then all. /from spf

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

" Paste from clipboard
map <leader>p "+p

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <silent> <leader>/ :nohlsearch<CR>"

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Fast saving
nnoremap <leader>w :w!<CR>

set ruler " Always show curent position

set cmdheight=2 " Height of the command bar

" Some stuff from spf13
set virtualedit=onemore    " allow cursor beyond las character
set history=1000 	   " store a ton of history
set scrolloff=3            " minimum lines to keep above and below cursor

set list
set listchars=tab:>.,trail:.,extends:\#,nbsp:. " Highlight problematic whitespace

"sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf sdfasdfasdfasdf
set nowrap "wrap long lines

set autoindent " indent at the same level of the previous line
set shiftwidth=4 " uses indents of 4 spaces
set expandtab         " tabs are spaces, not tabs
set tabstop=4         " and indentation every four columns
" set softtabstop=4     " let backspace delete indent

set matchpairs+=<:>   " match, to be used with %
set pastetoggle=<F9> " pastetoggle (sane indentation on pastes)

" Making it so ; works like : for commands. Saves typing and
" eliminates :W style typos due to lazy holding shift.
nnoremap ; :


" Enable full mouse support
set mouse+=a

" Return to last edit position when opening files!! :))
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Remeber info about open buffers on close
set viminfo^=%
