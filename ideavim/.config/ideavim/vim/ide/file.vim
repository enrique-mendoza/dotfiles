" Find Keymaps (<leader>f)
let g:WhichKeyDesc_file_find = "<leader>f +file/find"

let g:WhichKeyDesc_file_find_goto_file = "<leader>fF Find Files (cwd)"
nmap <leader>fF <Action>(GotoFile)

let g:WhichKeyDesc_file_find_search_everywhere  = "<leader>ff Find Files (Root Dir)"
nmap <leader>ff <Action>(SearchEverywhere)

let g:WhichKeyDesc_file_find_new_element_same_place = "<leader>fn New File"
nmap <leader>fn <Action>(NewElementSamePlace)

let g:WhichKeyDesc_file_find_open_file = "<leader>fp Projects"
nmap <leader>fp <Action>(OpenFile)

let g:WhichKeyDesc_file_find_switcher = "<leader>fr Recent"
nmap <leader>fr <Action>(Switcher)
