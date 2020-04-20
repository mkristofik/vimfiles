" Indent size
setlocal shiftwidth=4
setlocal softtabstop=4
" Convert tabs to spaces
setlocal expandtab
" Wrap long lines when they get close to the edge.
setlocal textwidth=0
setlocal wrapmargin=5
" Create new files using unix newlines.
setlocal fileformats=unix,dos
" Line up public/private with curly braces.
" Line up continuation lines with unclosed parentheses.
" Line up case blocks with the case label
" Line up template keyword with the function declaration below it.
setlocal cinoptions=g0,(0,l1,t0
" Don't highlight strings and numbers within comments.
unlet! c_comment_strings
