" Search Keymaps (<leader>s)
let g:WhichKeyDesc_search = "<leader>s +search"

let g:WhichKeyDesc_search_registers = "<leader>s\" Registers"
nmap <leader>s" :registers<CR>

let g:WhichKeyDesc_search_goto_action = "<leader>sC Commands"
nmap <leader>sC <Action>(GotoAction)

let g:WhichKeyDesc_search_highlight_usages_in_file = "<leader>sH Highlights"
nmap <leader>sH <Action>(HighlightUsagesInFile)

let g:WhichKeyDesc_search_activate_todo_tool_window = "<leader>sT Todo"
nmap <leader>sT <Action>(ActivateTODOToolWindow)

let g:WhichKeyDesc_search_history = "<leader>sc Command History"
nmap <leader>sc :history<CR>

let g:WhichKeyDesc_search_activate_problems_view_tool_window = "<leader>sd Diagnostics"
nmap <leader>sd <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_goto_url_action = "<leader>se Endpoints"
nmap <leader>se <Action>(GotoUrlAction)

let g:WhichKeyDesc_search_find_in_path = "<leader>sg Grep"
nmap <leader>sg <Action>(FindInPath)

let g:WhichKeyDesc_search_recent_locations = "<leader>sj Jumps"
nmap <leader>sj <Action>(RecentLocations)

let g:WhichKeyDesc_search_keymaps = "<leader>sk Keymaps"
nmap <leader>sk :map<CR>

let g:WhichKeyDesc_search_marks = "<leader>sm Marks"
nmap <leader>sm :marks<CR>

" Notifications Keymaps (<leader>sn)
let g:WhichKeyDesc_search_notifications = "<leader>sn +notifications"

let g:WhichKeyDesc_search_notifications_activate_notifications_tool_window = "<leader>sna All"
nmap <leader>sna <Action>(ActivateNotificationsToolWindow)

let g:WhichKeyDesc_search_notifications_reset_all_notifications = "<leader>snd Dismiss All"
nmap <leader>snd <Action>(ClearAllNotifications)

let g:WhichKeyDesc_search_goto_symbol = "<leader>ss Symbols"
nmap <leader>ss <Action>(GotoSymbol)

let g:WhichKeyDesc_search_goto_test = "<leader>st Tests"
nmap <leader>st <Action>(GotoTest)
