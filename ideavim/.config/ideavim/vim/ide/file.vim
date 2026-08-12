" Find Keymaps (<leader>f)
let g:WhichKeyDesc_find = "<leader>f Find"

let g:WhichKeyDesc_find_everywhere = "<leader>fe Everywhere"
nmap <leader>fe <Action>(SearchEverywhere)

let g:WhichKeyDesc_find_files = "<leader>ff File"
nmap <leader>ff <Action>(GotoFile)

let g:WhichKeyDesc_file_new = "<leader>fn New File"
nmap <leader>fn <Action>(NewElementSamePlace)

let g:WhichKeyDesc_find_projects = "<leader>fp Projects"
nmap <leader>fp <Action>(OpenFile)

let g:WhichKeyDesc_find_recent_files = "<leader>fr Recent"
nmap <leader>fr <Action>(Switcher)
