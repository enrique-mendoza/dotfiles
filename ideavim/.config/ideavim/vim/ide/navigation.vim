" Navigation Keymaps ([, ])
let g:WhichKeyDesc_goto_prev_element_under_caret_usage = "[[ Prev Reference"
nmap [[ <Action>(GotoPrevElementUnderCaretUsage)

let g:WhichKeyDesc_previous_tab = "[b Prev Buffer"
nmap [b <Action>(PreviousTab)

let g:WhichKeyDesc_goto_previous_error = "[e Prev Error"
nmap [e <Action>(GotoPreviousError)

let g:WhichKeyDesc_vcs_show_prev_change_marker = "[h Previous Hunk"
nmap [h <Action>(VcsShowPrevChangeMarker)

let g:WhichKeyDesc_todo_prev = "[t Previous Todo Comment"
nmap [t ?\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<CR>

let g:WhichKeyDesc_goto_next_element_under_caret_usage = "]] Next Reference"
nmap ]] <Action>(GotoNextElementUnderCaretUsage)

let g:WhichKeyDesc_next_tab = "]b Next Buffer"
nmap ]b <Action>(NextTab)

let g:WhichKeyDesc_goto_next_error = "]e Next Error"
nmap ]e <Action>(GotoNextError)

let g:WhichKeyDesc_vcs_show_next_change_marker = "]h Next Hunk"
nmap ]h <Action>(VcsShowNextChangeMarker)

let g:WhichKeyDesc_todo_next = "]t Next Todo Comment"
nmap ]t /\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<CR>
