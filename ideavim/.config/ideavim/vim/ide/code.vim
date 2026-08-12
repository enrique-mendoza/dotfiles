" Code Keymaps (<leader>c)
let g:WhichKeyDesc_code = "<leader>c +code"

let g:WhichKeyDesc_code_show_intention_actions = "<leader>cA Source Action"
nmap <leader>cA <Action>(ShowIntentionActions)

let g:WhichKeyDesc_code_rename_file = "<leader>cR Rename File"
nmap <leader>cR <Action>(RenameFile)

let g:WhichKeyDesc_code_refactoring_menu = "<leader>ca Code Action"
nmap <leader>ca <Action>(RefactoringMenu)
vmap <leader>ca <Action>(RefactoringMenu)

let g:WhichKeyDesc_code_activate_problems_view_tool_window = "<leader>cd Line Diagnostics"
nmap <leader>cd <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_code_format = "<leader>cf Format"
nmap <leader>cf <Action>(Format)
vmap <leader>cf <Action>(Format)

let g:WhichKeyDesc_code_optimize_imports = "<leader>co Optimize Imports"
nmap <leader>co <Action>(OptimizeImports)

let g:WhichKeyDesc_code_rename_element = "<leader>cr Rename"
nmap <leader>cr <Action>(RenameElement)
