" enable vim goodies
set nocompatible

" enable incremental search (highlights next match as you type)
set incsearch

" highlight search hits
set hlsearch

" tab policy: spaces only, 4 per indentation level
" use language-sensitive indentation where available
" use :retab to fix nonconforming files
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab

" maximize window
set lines=999
set columns=999

" use syntax highlighting
filetype on
syntax enable

" use auto-indentation
set cindent
set ai
set smartindent
set number
set expandtab
filetype indent on

" misc options
set matchpairs+=<:>  " bounce matching angle brackets on %
set hidden           " don't kill buffers, just hide them
set incsearch        " incrementally search (firefox does this too)
set ignorecase       " ignore capitalization when searching
set scrolloff=3      " scroll the screen to keep the cursor more than 5 lines in
set showbreak=\      " display wrapped lines with a leading '\'
set breakat-=-       " allow wrapping words at '-'
set linebreak        " allow word wrapping
set showmatch        " jump to previous closing brace/bracket when closing a block
set smartcase
set bufhidden=hide
source ~/.vim/autotag.vim

" show all matching files when expanding wildcards
set wildmode=longest,list

" don't display the graphical toolbar 
set guioptions-=T

" ********** Custom Keybindings ********************
" CTRL-j and CTRL-k move the current line up or down
nmap <silent> <C-j> :m+<CR>
nmap <silent> <C-k> :m-2<CR>
imap <silent> <C-j> <C-O>:m+<CR><C-O>
imap <silent> <C-k> <C-O>:m-2<CR><C-O>

map <C-\> :NERDTreeFind<CR>
map <C-n> :FufFileWithCurrentBufferDir <CR>
map <C-e> :MRU<CR>
map <F2> :NERDTreeToggle<CR>

" backwards-kill-word idea cribbed from Steve Yegge
" hit CTRL-h (insert and normal mode) to delete the word
" you are currently typing. It's faster than backspacing.
nmap <silent> <C-h> ciw
map! <silent> <C-h> <Esc>ciw
" undo everything just typed, and start over, with CTRL-H
map! <silent> <C-H> <Esc>ui

" hit CMD-U or CMD-Z when in insert mode to undo insert and return to command mode
map! <silent> <C-u> <Esc>u

" hit F1 to toggle match highlighting
map <F1> :set invhlsearch<CR>

" linux friendly: paste the current X selection on middle mouse button
" map <S-Insert> <MiddleMouse>
" map! <S-Insert> <MiddleMouse>

" ************* Load Plugins *****************
" start matchit
"source $VIMRUNTIME/macros/matchit.vim

" Toggle the TagList
"nnoremap <silent> <F8> :TlistToggle<CR>
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Use_SingleClick = 1
"let Tlist_Process_File_Always = 1

" Toggle BufExplorer
"map <F9> \bs
"let g:bufExplorerShowDirectories=0   " Don't show directories.
"let g:bufExplorerSplitBelow=1        " Split new window below current
"let g:bufExplorerSplitHorzSize=0     " Use this many lines for the window
"let g:bufExplorerUseCurrentWindow=1  " Open using current window

  
"visual stuff
set ruler
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

"use different colorscheme for mac vim and console vim
if has('gui_running')
  colorscheme ir_black_ron
else
  colorscheme desert
endif 

"misc

"fix grep
:let Grep_Find_Use_Xargs = 0
:let Grep_Default_Filelist = '*.rb'

"map camelcasemotion replacements to w,b,e so they are camelcase and _ aware
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e
