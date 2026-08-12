" See: https://github.com/terryma/vim-multiple-cursors
nmap <C-n> <Plug>NextWholeOccurrence
xmap <C-n> <Plug>NextWholeOccurrence
nmap g<C-n> <Plug>NextOccurrence
xmap g<C-n> <Plug>NextOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence

" Note that the default <A-n> and g<A-n> shortcuts don't work on Mac due to dead keys.
" <A-n> is used to enter accented text e.g. ñ.
nmap gw<C-n> <Plug>AllWholeOccurrences
xmap gw<C-n> <Plug>AllWholeOccurrences
nmap ga<C-n> <Plug>AllOccurrences
xmap ga<C-n> <Plug>AllOccurrences
