" Navigation Keymaps ([, ])
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
