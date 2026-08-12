let g:WhichKeyDesc_search = "<leader>s Search"

let g:WhichKeyDesc_search_registers = "<leader>s\" Registers"
nmap <leader>s" :registers<CR>

let g:WhichKeyDesc_search_action = "<leader>sC Commands"
nmap <leader>sC <Action>(GotoAction)

let g:WhichKeyDesc_search_history = "<leader>sc Command History"
nmap <leader>sc :history<CR>

let g:WhichKeyDesc_search_diagnostics = "<leader>sd Diagnostics"
nmap <leader>sd <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_endpoints = "<leader>se Endpoints"
nmap <leader>se <Action>(GotoUrlAction)

let g:WhichKeyDesc_search_grep = "<leader>sg Grep"
nmap <leader>sg <Action>(FindInPath)

let g:WhichKeyDesc_search_highlights = "<leader>sH Highlights"
nmap <leader>sH <Action>(HighlightUsagesInFile)

let g:WhichKeyDesc_search_jumps = "<leader>sj Jumps"
nmap <leader>sj <Action>(RecentLocations)

let g:WhichKeyDesc_search_keymaps = "<leader>sk Keymaps"
nmap <leader>sk :map<CR>

let g:WhichKeyDesc_search_marks = "<leader>sm Marks"
nmap <leader>sm :marks<CR>

let g:WhichKeyDesc_search_symbols = "<leader>ss Symbols"
nmap <leader>ss <Action>(GotoSymbol)

let g:WhichKeyDesc_search_todos = "<leader>sT Todo"
nmap <leader>sT <Action>(ActivateTODOToolWindow)

let g:WhichKeyDesc_search_tests = "<leader>st Tests"
nmap <leader>st <Action>(GotoTest)
