" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Hornbaker http://github.com/ronhornbaker
" Last Change:	2011 June 03

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "hornbaker"
" 
" 	call <SID>X("rubySymbol", s:green, "", "")	
" 	call <SID>X("rubyConstant", s:yellow, "", "")	
" 	call <SID>X("rubyAttribute", s:blue, "", "")	
" 	call <SID>X("rubyInclude", s:blue, "", "")
" 	call <SID>X("rubyLocalVariableOrMethod", s:orange, "", "")	
" 	call <SID>X("rubyCurlyBlock", s:orange, "", "") 
" 	" Standard Highlighting
" 	call <SID>X("Comment", s:comment, "", "")
" 	call <SID>X("Todo", s:comment, "", "")
" 	call <SID>X("Title", s:comment, "", "")
" 	call <SID>X("Identifier", s:red, "", "none")
" 	call <SID>X("Statement", s:foreground, "", "")
" 	call <SID>X("Conditional", s:foreground, "", "")
" 	call <SID>X("Repeat", s:foreground, "", "")
" 	call <SID>X("Structure", s:purple, "", "")
" 	call <SID>X("Function", s:blue, "", "")
" 	call <SID>X("Constant", s:orange, "", "")
" 	call <SID>X("String", s:green, "", "")
" 	call <SID>X("Special", s:foreground, "", "")
" 	call <SID>X("PreProc", s:purple, "", "")
" 	call <SID>X("Operator", s:foreground, "", "none")
" 	call <SID>X("Type", s:blue, "", "none")
" 	call <SID>X("Define", s:purple, "", "none")
" 	call <SID>X("Include", s:blue, "", "") 
hi Comment term=bold ctermfg=DarkGray guifg=#777777
hi Normal guifg=#000000 guibg=white
hi Constant term=underline ctermfg=Magenta guifg=Magenta
hi String term=underline ctermfg=Magenta guifg=DarkMagenta
hi Special term=bold ctermfg=Magenta guifg=Magenta
hi Function term=underline cterm=bold ctermfg=Blue guifg=DarkRed gui=bold
hi Identifier term=underline cterm=bold ctermfg=Blue guifg=Blue
hi Statement term=bold cterm=bold ctermfg=DarkRed gui=bold guifg=Brown
hi PreProc term=underline cterm=bold ctermfg=Black guifg=Black gui=bold guibg=#dddddd
hi Conditional term=underline cterm=bold ctermfg=Black guifg=Black gui=bold guibg=#dddddd
hi Repeat term=underline cterm=bold ctermfg=Black guifg=Black gui=bold guibg=#dddddd
hi Type term=underline cterm=bold ctermfg=DarkGreen gui=NONE guifg=DarkGreen gui=bold
hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
hi Tag term=bold cterm=bold ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi  StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=bold guifg=Yellow guibg=DarkGray
hi rubySymbol cterm=bold guifg=DarkGreen gui=bold
hi rubyConstant guifg=DarkRed cterm=bold gui=bold
hi rubyAttribute guifg=LightGray
hi rubyInclude guifg=Black
hi rubyLocalVariableOrMethod guifg=Black
hi rubyCurlyBlock guifg=Black cterm=bold gui=bold
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
