if exists("b:current_syntax")
    finish
endif


syn sync minlines=10
syn sync linebreaks=1


" Need \+ instead of just + for "one or more".  \c means case-insensitive.
syn match notesUser "@[a-z]\+\c"
syn match notesUrl "https\?:\/\/[^ >,;]*"
syn match notesTodo "todo:\c"


" Stole these from markdown syntax.  Uncompleted to-do list items start with a
" - or +.
syn match notesListMarker "^\%(\t\| \{0,8\}\)[-+]\%(\s\+\S\)\@="
syn match notesOrderedListMarker "^\%(\t\| \{0,8}\)\<\d\+\.\%(\s\+\S\)\@="
syn match notesTitle "^.\+\n[=]\+$"
syn match notesHeading "^.\+\n[-]\+$"


" Mark completed items in a to-do list with a *.  The highlight group goes
" from the initial * to either the next uncompleted list item or a blank line.
syn region notesCompletedBlock start="^\%(\t\| \{0,8\}\)\*" end="\n\n\|^\%(\t\| \{0,8\}\)[-+]" contains=notesListMarker keepend


syn region notesTagBlock matchgroup=Normal start="(" end=")" contained contains=notesUser
syn region notesHeadingBlock start="^#\s" end="-\{2,}" contains=notesTagBlock


hi def link notesChangeLink             Underlined
hi def link notesRpdLink                notesChangeLink
hi def link notesUrl                    notesChangeLink
hi def link notesListMarker             Special
hi def link notesOrderedListMarker      notesListMarker
hi def link notesTitle                  PreProc
hi def link notesHeading                Identifier
hi def link notesHeadingBlock           notesHeading
hi def link notesUser                   Statement
hi def link notesTagBlock               PreProc
hi def link notesTodo                   Todo
hi def link notesCompletedBlock         Folded
hi Folded gui=italic


let b:current_syntax = 'notes'
