" Vim syntax file
" for brian's custom to-do/gtd lists and hacknotes
"
" TODO: Looks decent in solarized light/dark and pyte, but craptastic in
" espressolibre.

if exists("b:current_syntax")
	finish
endif

setlocal iskeyword+=:
syn case ignore

syn region td2indentNotDone start=/^\s*_/ end=/\n/
syn region td2indentDone start=/^\s*x/ end=/\n/
syn region td2Bookmark start=/^\s*>>/ end=/\n/
syn region td2Mark start=/-- mark --/ end=/\n/

hi link td2Comment   Comment
hi link td2indentNotDone    Type
hi link td2indentDone   Constant
hi link td2Bookmark   Special
hi link td2indentGeneral   Type
hi link td2markdownheader    String
hi link td2Mark    PreProc

""" land of bad tries """
"hi link td2Bookmark   Boolean
"syn region td2Bookmark start=/^\s*>>/ end=/\n/
"syn region td2indentGeneral start=/^\s[^_|x|>].*/ end=/\n/
"syn region td2indentGeneral start=/^\s+[^_|x|>].*/ end=/\n/
"syn match td2Bookmark '^\s*>>'
"syn region td2indentNotDone start=/^\s_/ end=/\n/
"syn match td2Comment '^#.*'
"syn match td2markdownheader '^=.*'
