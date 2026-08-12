let g:WhichKeyDesc_tab = "<leader><tab> Tabs"

let g:WhichKeyDesc_tab_previous = "<leader><tab>[ Previous Tab"
nmap <leader><tab>[ <Action>(PreviousTab)

let g:WhichKeyDesc_tab_next = "<leader><tab>] Next Tab"
nmap <leader><tab>] <Action>(NextTab)

let g:WhichKeyDesc_tab_close = "<leader><tab>d Close Tab"
nmap <leader><tab>d <Action>(CloseActiveTab)

let g:WhichKeyDesc_tab_close_others = "<leader><tab>o Close Other Tabs"
nmap <leader><tab>o <Action>(CloseAllEditorsButActive)
