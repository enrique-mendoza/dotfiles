" Tab Management Keymaps (<leader><tab>)
let g:WhichKeyDesc_tab = "<leader><tab> +tabs"

let g:WhichKeyDesc_tab_previous_tab = "<leader><tab>[ Previous Tab"
nmap <leader><tab>[ <Action>(PreviousTab)

let g:WhichKeyDesc_tab_next_tab = "<leader><tab>] Next Tab"
nmap <leader><tab>] <Action>(NextTab)

let g:WhichKeyDesc_tab_close_active_tab = "<leader><tab>d Close Tab"
nmap <leader><tab>d <Action>(CloseActiveTab)

let g:WhichKeyDesc_tab_close_all_editors_but_active = "<leader><tab>o Close Other Tabs"
nmap <leader><tab>o <Action>(CloseAllEditorsButActive)
