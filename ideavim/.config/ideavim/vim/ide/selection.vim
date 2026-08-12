" Smart Selection
sethandler <C-Space> n:vim v:vim i:ide

let g:WhichKeyDesc_selection_increment = "<C-Space> Increment Selection"
nmap <C-Space> <Action>(EditorSelectWord)
vmap <C-Space> <Action>(EditorSelectWord)

let g:WhichKeyDesc_selection_decrement = "<BS> Decrement Selection"
vmap <BS> <Action>(EditorUnSelectWord)
