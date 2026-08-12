" Buffer Keymaps (<leader>b)
let g:WhichKeyDesc_buffers = "<leader>b +buffers"

let g:WhichKeyDesc_buffer_close_all_to_the_left = "<leader>bL Delete Buffers to the Left"
nmap <leader>bL <Action>(CloseAllToTheLeft)

let g:WhichKeyDesc_buffer_close_all_to_the_right = "<leader>bR Delete Buffers to the Right"
nmap <leader>bR <Action>(CloseAllToTheRight)

let g:WhichKeyDesc_buffers_change_split_orientation = "<leader>bc Change Split Orientation"
nmap <leader>bc <Action>(ChangeSplitOrientation)

let g:WhichKeyDesc_buffers_close_editor = "<leader>bd Delete buffer"
nmap <leader>bd <Action>(CloseEditor)

let g:WhichKeyDesc_buffers_move_tab_left = "<leader>bh Move Tab Into Left Group"
nmap <leader>bh <Action>(MoveTabLeft)

let g:WhichKeyDesc_buffers_move_tab_down = "<leader>bj Move Tab Into Below Group"
nmap <leader>bj <Action>(MoveTabDown)

let g:WhichKeyDesc_buffers_move_tab_up = "<leader>bk Move Tab Into Above Group"
nmap <leader>bk <Action>(MoveTabUp)

let g:WhichKeyDesc_buffers_move_tab_right = "<leader>bl Move Tab Into Right Group"
nmap <leader>bl <Action>(MoveTabRight)

let g:WhichKeyDesc_buffers_reopen_closed_tab = "<leader>br Reopen Closed Editor"
nmap <leader>br <Action>(ReopenClosedTab)

let g:WhichKeyDesc_buffers_move_editor_to_opposite_tab_group = "<leader>bt Move Editor To Opposite Tab Group"
nmap <leader>bt <Action>(MoveEditorToOppositeTabGroup)

let g:WhichKeyDesc_buffers_unsplit = "<leader>bu Unsplit"
nmap <leader>bu <Action>(Unsplit)
