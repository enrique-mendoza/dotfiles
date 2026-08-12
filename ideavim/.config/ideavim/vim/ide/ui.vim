" UI Keymaps (<leader>u)
let g:WhichKeyDesc_ui_toggles = "<leader>u UI"

let g:WhichKeyDesc_ui_color_schema = "<leader>uc Colorscheme"
nmap <leader>uc <Action>(QuickChangeScheme)

let g:WhichKeyDesc_ui_distraction_free_mode = "<leader>uf Toggle Distraction Free Mode"
nmap <leader>uf <Action>(ToggleDistractionFreeMode)

let g:WhichKeyDesc_ui_no_hl_search = "<leader>ur Clear search"
nmap <Leader>ur :nohlsearch<CR>

let g:WhichKeyDesc_ui_toggle_status_bar = "<leader>us Toggle Status Bar"
nmap <leader>us <Action>(ViewStatusBar)

let g:WhichKeyDesc_ui_toggle_tool_buttons = "<leader>ut Toggle Tool Buttons"
nmap <leader>ut <Action>(ViewToolButtons)

let g:WhichKeyDesc_ui_zen_mode = "<leader>uz Toggle Zen Mode"
nmap <leader>uz <Action>(ToggleZenMode)
