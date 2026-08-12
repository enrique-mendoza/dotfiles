" Git Keymaps (<leader>g)
let g:WhichKeyDesc_git = "<leader>g +git"

let g:WhichKeyDesc_git_editor_gutter_vcs_popup_menu = "<leader>gB Git Blame"
nmap <leader>gB <Action>(EditorGutterVcsPopupMenu)

let g:WhichKeyDesc_git_show_log = "<leader>gL Git Log (cwd)"
nmap <leader>gL <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_stash = "<leader>gS Git Stash"
nmap <leader>gS <Action>(Git.Stash)

let g:WhichKeyDesc_git_same_version = "<leader>gd Git Diff (cwd)"
nmap <leader>gd <Action>(Compare.SameVersion)

let g:WhichKeyDesc_git_show_tabbed_file_history = "<leader>gf Git Current File History"
nmap <leader>gf <Action>(Vcs.ShowTabbedFileHistory)

" Git Hunks (<leader>gh)
let g:WhichKeyDesc_git_hunks = "<leader>gh +hunks"

let g:WhichKeyDesc_git_hunks_annotate = "<leader>ghb Blame Line"
nmap <leader>ghb <Action>(Annotate)

let g:WhichKeyDesc_git_hunks_show_diff_changed_lines = "<leader>ghd Diff this"
nmap <leader>ghd <Action>(Vcs.ShowDiffChangedLines)

let g:WhichKeyDesc_git_hunks_vcs_show_current_change_marker = "<leader>ghp Preview Hunk Inline"
nmap <leader>ghp <Action>(VcsShowCurrentChangeMarker)

let g:WhichKeyDesc_git_hunks_rollback_changed_lines = "<leader>ghr Reset Hunk"
nmap <leader>ghr <Action>(Vcs.RollbackChangedLines)

let g:WhichKeyDesc_git_show_history_for_block = "<leader>gl Git Log Line"
nmap <leader>gl <Action>(Vcs.ShowHistoryForBlock)
vmap <leader>gl <Action>(Vcs.ShowHistoryForBlock)

let g:WhichKeyDesc_git_unstash = "<leader>gu Git Unstash"
nmap <leader>gu <Action>(Git.Unstash)
