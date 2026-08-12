" General Keymaps
let g:WhichKeyDesc_terminal = "<C-/> Terminal (Root Dir)"
nmap <C-/> <Action>(ActivateDebugToolWindow)

let g:WhichKeyDesc_hide_active_window = "<C-=> Close Active Window"
nmap <C-=> <Action>(HideActiveWindow)

let g:WhichKeyDesc_signature_help_alt = "<C-k> Signature Help"
imap <C-k> <C-o><Action>(ParameterInfo)

let g:WhichKeyDesc_reference_previous = "[[ Prev Reference"
nmap [[ <Action>(GotoPrevElementUnderCaretUsage)

let g:WhichKeyDesc_reference_next = "]] Next Reference"
nmap ]] <Action>(GotoNextElementUnderCaretUsage)

let g:WhichKeyDesc_buffer_previous_alt = "[b Prev Buffer"
nmap [b <Action>(PreviousTab)

let g:WhichKeyDesc_buffer_next_alt = "]b Next Buffer"
nmap ]b <Action>(NextTab)

let g:WhichKeyDesc_error_previous = "[e Prev Error"
nmap [e <Action>(GotoPreviousError)

let g:WhichKeyDesc_error_next = "]e Next Error"
nmap ]e <Action>(GotoNextError)

let g:WhichKeyDesc_todo_prev = "[t Previous Todo Comment"
nmap [t ?\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<CR>

let g:WhichKeyDesc_todo_next = "]t Next Todo Comment"
nmap ]t /\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<CR>

let g:WhichKeyDesc_quickfix_previous = "[q Previous Quickfix"
nmap [q <Action>(GotoPreviousError)

let g:WhichKeyDesc_quickfix_next = "]q Next Quickfix"
nmap ]q <Action>(GotoNextError)

let g:WhichKeyDesc_goto_declaration = "gD Goto Declaration"
nmap gD <Action>(GotoTypeDeclaration)

let g:WhichKeyDesc_goto_definition = "gd Goto Definition"
nmap gd <Action>(GotoDeclaration)

let g:WhichKeyDesc_goto_implementation = "gI Goto Implementation"
nmap gI <Action>(GotoImplementation)

let g:WhichKeyDesc_signature_help = "gK Signature Help"
nmap gK <Action>(ParameterInfo)

let g:WhichKeyDesc_references = "gr References"
nmap gr <Action>(ShowUsages)

let g:WhichKeyDesc_goto_type = "gy Goto Type Definition"
nmap gy <Action>(QuickTypeDefinition)

let g:WhichKeyDesc_split_vertically = "<leader>| Split Vertically"
nmap <leader><bar> <c-w>v

let g:WhichKeyDesc_split_horizontally = "<leader>- Split Horizontally"
nmap <leader>- <c-w>s

let g:WhichKeyDesc_plugins = "<leader>p Plugins"
nmap <leader>p <Action>(WelcomeScreen.Plugins)

let g:WhichKeyDesc_reload_idea_vim = "<leader>r Reload IdeaVim"
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)
