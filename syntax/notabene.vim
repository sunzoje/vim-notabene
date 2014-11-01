" Vim syntax file
" Language: note files
" Mainainer:
" Last Change:
" Version: 1

if exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword todoKeyword for loop times to while
syn keyword todoKeyword if elsif else
syn keyword todoKeyword class return
syn keyword todoKeyword do done end
hi def link todoKeyword Keyword

syn region nbRegion start=/\v"/ skip=/\v\\./ end=/\v"/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
syn region nbRegion start=/\v'/ skip=/\v\\./ end=/\v'/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
hi def link nbRegion String

syn region nbParen start=/\v\(/ skip=/\v\\./ end=/\v\)/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
syn region nbSquare start=/\v\[/ skip=/\v\\./ end=/\v\]/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
syn region nbBrace start=/\v\{/ skip=/\v\\./ end=/\v\}/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
syn region nbExec start=/`/ skip=/\v\\./ end=/`/ contains=nbEmail,nbSite,nbArgs,nbTweetUser
hi def link nbParen Operator
hi def link nbSquare Constant
hi def link nbBrace PreProc
hi def link nbExec Type

syn match commentMatch /^#!.*/ 
hi def link commentMatch Comment

syn match nbArgs /\v\s{1}-[a-zA-Z0-9]+((\s|;)@=|$)/
syn match nbArgs /\v\s{1}--[a-z-]*((\s|;)@=|$)/
hi def link nbArgs Constant

syn match nbList /\v^(\d\.|\+|\*)/  
hi def link nbList Comment

syn match nbEmail "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
hi def link nbEmail Identifier

" syn match nbSite "\v(((https?|ftp)://)|www\.)[^\s/$\.?#].[^\s]+(\s)@="
syn region nbSite start="https\?://\|www." end="\s\@="
hi def link nbSite TabLine

syn match nbTweetUser /\v\@[a-zA-Z0-9_]+(\s)@=/
hi def lin nbTweetUser TabLine

let b:current_syntax = "notabene"