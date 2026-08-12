" Git Keymaps (<leader>g)
let g:WhichKeyDesc_git = "<leader>g Git"

let g:WhichKeyDesc_git_blame = "<leader>gB Git Blame"
nmap <leader>gB <Action>(EditorGutterVcsPopupMenu)

let g:WhichKeyDesc_git_branches = "<leader>gb Git Branches"
nmap <leader>gb <Action>(Git.Branches)

let g:WhichKeyDesc_git_diff_hunks = "<leader>gD Git Diff (Hunks)"
nmap <leader>gD <Action>(Vcs.ShowDiffChangedLines)

let g:WhichKeyDesc_git_diff = "<leader>gd Git Diff"
nmap <leader>gd <Action>(Compare.SameVersion)

let g:WhichKeyDesc_git_log_file = "<leader>gf Git Log File"
nmap <leader>gf <Action>(Vcs.ShowTabbedFileHistory)

let g:WhichKeyDesc_git_log_line = "<leader>gL Git Log Line"
nmap <leader>gL <Action>(Vcs.ShowHistoryForBlock)
vmap <leader>gL <Action>(Vcs.ShowHistoryForBlock)

let g:WhichKeyDesc_git_log = "<leader>gl Git Log"
nmap <leader>gl <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_git_stash = "<leader>gs Git Stash"
nmap <leader>gs <Action>(Git.Stash)

let g:WhichKeyDesc_git_unstash = "<leader>gu Git Unstash"
nmap <leader>gu <Action>(Git.Unstash)

" Git Hunks ---------------------
let g:WhichKeyDesc_git_hunks = "<leader>gh Hunks"

let g:WhichKeyDesc_git_hunks_previous = "<leader>gh[ Previous Hunk"
nmap <leader>gh[ <Action>(VcsShowPrevChangeMarker)

let g:WhichKeyDesc_git_hunks_next = "<leader>gh] Next Hunk"
nmap <leader>gh] <Action>(VcsShowNextChangeMarker)

let g:WhichKeyDesc_git_hunks_preview_inline = "<leader>ghp Preview Hunk Inline"
nmap <leader>ghp <Action>(VcsShowCurrentChangeMarker)

let g:WhichKeyDesc_git_hunks_reset = "<leader>ghr Reset Hunk"
nmap <leader>ghr <Action>(Vcs.RollbackChangedLines)
