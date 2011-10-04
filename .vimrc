" enable vim goodies
set nocompatible

" enable incremental search (highlights next match as you type)
set incsearch

" highlight search hits
set hlsearch

" tab policy: spaces only, 2 per indentation level
" use language-sensitive indentation where available
" use :retab to fix nonconforming files
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab
set cursorline

"re-map <leader> from \ to , (comma) to avoid having to reach with right pinky
let mapleader = ","

" open window maximized
" set lines=999
" set columns=999

" use syntax highlighting
filetype on
filetype plugin on
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
set ignorecase       " ignore case when searching
set smartcase        " ignore capitalization when searching, unless input contains uppercase
set scrolloff=3      " scroll the screen to keep the cursor more than 5 lines in
set showbreak=\      " display wrapped lines with a leading '\'
set breakat-=-       " allow wrapping words at '-'
set linebreak        " allow word wrapping
set showmatch        " jump to previous closing brace/bracket when closing a block
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

map <leader>m :NERDTreeFind<CR>
map <leader>f :FufFileWithFullCwd **/<CR>
map <C-e> :MRU<CR>
map <F2> :NERDTreeToggle<CR>
map <C-g> :G
" map shortcut to Rails view <-> controller toggle
map <C-a> :R<CR>

" shortcut to applescript that refreshes browser page in browser(s)
map <leader>r :execute "!open /Users/Ron/code/vimrc/refresh_browser.app"<CR><CR>

" CTRL-s to save file from both normal and insert modes
" (doesn't work from Terminal for some reason)
map! <C-s> <ESC>:w<CR>
nmap <C-s> :w<CR>

" quick access to NERDTree bookmarks
map <F3> :NERDTreeFind<CR>:OpenBookmark 

" change working directory to current file's location by typing \cd
map <leader>cd :cd %:p:h<CR>

" toggle to previous file in buffer
map <leader>j ,bej<CR>

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

"visual stuff
set ruler
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

"use different colorscheme for macvim and console vim
if has('gui_running')
  colorscheme hornbaker
else
  colorscheme vividchalk
endif 

"fix grep
:let Grep_Find_Use_Xargs = 0
:let Grep_Default_Filelist = '*.rb'

" custom grep function, modified from http://amix.dk/blog/post/175
function! G(...)
  let options = '-rsinI --exclude={.svn*,.svn/*,*.{png,jpg,gif,log,ai,psd,eps}}'
  let pattern = join(a:000," ")
  let dir = '*'
  let exclude = 'grep -v "^[^:]*\.svn/.*:"'
  let cmd = 'grep '.options.' "'.pattern.'" '.dir. '| '.exclude
  let cmd_output = system(cmd)
  if cmd_output == ""
    echomsg "Pattern " . pattern . " not found"
    return
  endif

  let tmpfile = tempname()
  exe "redir! > " . tmpfile
  silent echon '[grep search for "'.pattern.'" with options "'.options.'"]'."\n"
  silent echon cmd_output
  redir END

  let old_efm = &efm
  set efm=%f:%\\s%#%l:%m

  execute "silent! cgetfile " . tmpfile
  let &efm = old_efm
  botright copen

  call delete(tmpfile)
endfunction
command! -nargs=* -complete=file G call G(<f-args>)

function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction
map <leader>s :call ToggleScratch()<CR>

