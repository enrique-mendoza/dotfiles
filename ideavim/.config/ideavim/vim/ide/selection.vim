" Smart Selection
sethandler <C-Space> n:vim v:vim i:ide

let g:WhichKeyDesc_selection_editor_un_select_word = "<BS> Decrement Selection"
vmap <BS> <Action>(EditorUnSelectWord)

let g:WhichKeyDesc_selection_editor_select_word = "<C-Space> Increment Selection"
nmap <C-Space> <Action>(EditorSelectWord)
vmap <C-Space> <Action>(EditorSelectWord)
