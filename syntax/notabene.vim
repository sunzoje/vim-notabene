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
hi def link todoKeyword Keyword

let b:current_syntax = "notabene"