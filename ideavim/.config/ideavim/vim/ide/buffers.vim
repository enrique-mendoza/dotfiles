" Buffer Keymaps (<leader>b)
let g:WhichKeyDesc_buffers = "<leader>b Buffers"

let g:WhichKeyDesc_buffers_delete = "<leader>bd Delete buffer"
nmap <leader>bd <Action>(CloseEditor)

let g:WhichKeyDesc_buffers_move_left = "<leader>bh Move Tab Into Left Group"
nmap <leader>bh <Action>(MoveTabLeft)

let g:WhichKeyDesc_buffers_move_down = "<leader>bj Move Tab Into Below Group"
nmap <leader>bj <Action>(MoveTabDown)

let g:WhichKeyDesc_buffers_move_up = "<leader>bk Move Tab Into Above Group"
nmap <leader>bk <Action>(MoveTabUp)

let g:WhichKeyDesc_buffers_move_right = "<leader>bl Move Tab Into Right Group"
nmap <leader>bl <Action>(MoveTabRight)

let g:WhichKeyDesc_buffers_reopen = "<leader>br Reopen Closed Editor"
nmap <leader>br <Action>(ReopenClosedTab)

let g:WhichKeyDesc_buffers_move_to_opposite_tab_group = "<leader>bt Move Editor To Opposite Tab Group"
nmap <leader>bt <Action>(MoveEditorToOppositeTabGroup)

let g:WhichKeyDesc_buffers_unsplit = "<leader>bu Unsplit"
nmap <leader>bu <Action>(Unsplit)

let g:WhichKeyDesc_buffers_change_split_orientation = "<leader>by Change Split Orientation"
nmap <leader>by <Action>(ChangeSplitOrientation)
