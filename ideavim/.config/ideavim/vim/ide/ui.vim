" UI Keymaps (<leader>u)
let g:WhichKeyDesc_ui = "<leader>u +ui"

let g:WhichKeyDesc_ui_quick_change_scheme = "<leader>uC Colorscheme"
nmap <leader>uC <Action>(QuickChangeScheme)

let g:WhichKeyDesc_ui_toggle_distraction_free_mode = "<leader>uf Toggle Distraction Free Mode"
nmap <leader>uf <Action>(ToggleDistractionFreeMode)

let g:WhichKeyDesc_ui_toggle_inlay_hints_globally_action = "<leader>uh Toggle Inlay Hints"
nmap <leader>uh <Action>(ToggleInlayHintsGloballyAction)

let g:WhichKeyDesc_ui_reset_all_notifications = "<leader>un Dismiss All Notifications"
nmap <leader>un <Action>(ClearAllNotifications)

let g:WhichKeyDesc_ui_no_hl_search = "<leader>ur Redraw / Clear hlsearch / Diff Update"
nmap <leader>ur :nohlsearch<CR>

let g:WhichKeyDesc_ui_view_status_bar = "<leader>us Toggle Status Bar"
nmap <leader>us <Action>(ViewStatusBar)

let g:WhichKeyDesc_ui_view_tool_buttons = "<leader>ut Toggle Tool Buttons"
nmap <leader>ut <Action>(ViewToolButtons)

let g:WhichKeyDesc_ui_toggle_zen_mode = "<leader>uz Toggle Zen Mode"
nmap <leader>uz <Action>(ToggleZenMode)
