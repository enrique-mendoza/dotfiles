" ██╗    ██╗██╗  ██╗██╗ ██████╗██╗  ██╗██╗  ██╗███████╗██╗   ██╗
" ██║    ██║██║  ██║██║██╔════╝██║  ██║██║ ██╔╝██╔════╝╚██╗ ██╔╝
" ██║ █╗ ██║███████║██║██║     ███████║█████╔╝ █████╗   ╚████╔╝ 
" ██║███╗██║██╔══██║██║██║     ██╔══██║██╔═██╗ ██╔══╝    ╚██╔╝  
" ╚███╔███╔╝██║  ██║██║╚██████╗██║  ██║██║  ██╗███████╗   ██║   
"  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   
                                                              
let g:WhichKey_CommandStyle = "none"
let g:WhichKey_FontFamily = "JetBrainsMono NF"
let g:WhichKey_FontSize = 15
let g:WhichKey_KeyStyle = "none"
let g:WhichKey_ShowTypedSequence = "false"
let g:WhichKey_ShowVimActions = "true"
let g:WhichKey_PrefixStyle = "none"
let g:WhichKey_Divider = " + "

"   ██╗██████╗ ███████╗ █████╗      █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
"   ██║██╔══██╗██╔════╝██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
"   ██║██║  ██║█████╗  ███████║    ███████║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
"   ██║██║  ██║██╔══╝  ██╔══██║    ██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
"   ██║██████╔╝███████╗██║  ██║    ██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
"   ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

" General ---------------------
let g:WhichKeyDesc_leader = "<leader> Leader"
let mapleader=" "

let g:WhichKeyDesc_comment_by_line_comment = "<leader>/  Comment Toggle"
let g:WhichKeyDesc_no_hl_search = "<leader>c  Clear search" 
let g:WhichKeyDesc_explorer = "<leader>e  Explorer"
let g:WhichKeyDesc_split_horizontally = "<leader>h  Split Horizontally"
let g:WhichKeyDesc_split_vertically = "<leader>v  Split Vertically"
let g:WhichKeyDesc_reload_idea_vim = "<leader>r  Reload IdeaVim"

" Buffers ---------------------
let g:WhichKeyDesc_buffers_editors = "<leader>b  Buffers/Tabs"

let g:WhichKeyDesc_close_all_editors_but_active = "<leader>bD  Close Other Editors"
let g:WhichKeyDesc_close_editor = "<leader>bd  Close Editor"
let g:WhichKeyDesc_move_tab_left = "<leader>bh  Move Tab Into Left Group"
let g:WhichKeyDesc_move_tab_down = "<leader>bj  Move Tab Into Below Group"
let g:WhichKeyDesc_move_tab_up = "<leader>bk  Move Tab Into Above Group"
let g:WhichKeyDesc_move_tab_right = "<leader>bl  Move Tab Into Right Group"
let g:WhichKeyDesc_prev_splitter = "<leader>bn  Previous Splitter"
let g:WhichKeyDesc_move_editor_to_opposite_tab_group = "<leader>bo  Move Editor To Opposite Tab Group"
let g:WhichKeyDesc_next_splitter = "<leader>bp  Next Splitter"
let g:WhichKeyDesc_reopen_closed_tab = "<leader>br  Reopen Closed Editor"
let g:WhichKeyDesc_change_split_orientation = "<leader>by  Change Split Orientation"
let g:WhichKeyDesc_unsplit = "<leader>bu  Unsplit"

" Debug ---------------------
let g:WhichKeyDesc_debug = "<leader>d  Debug"

let g:WhichKeyDesc_stop = "<leader>dd   Disconnect"
let g:WhichKeyDesc_remove_all_breakpoints = "<leader>dR  Remove All Breakpoints"
let g:WhichKeyDesc_step_into = "<leader>di  Step Into"
let g:WhichKeyDesc_evaluate_expression = "<leader>de  Evaluate Expression"
let g:WhichKeyDesc_mute_all_breakpoints = "<leader>dm  Mute All Breakpoints"
let g:WhichKeyDesc_run_debug = "<leader>ds  Start"
let g:WhichKeyDesc_step_over = "<leader>do  Step Over"
let g:WhichKeyDesc_pause = "<leader>dp  Pause"
let g:WhichKeyDesc_remove_all_breakpoints_in_file = "<leader>dr  Remove All Breakpoints In File"
let g:WhichKeyDesc_toggle_line_breakpoint = "<leader>dt   Toggle Breakpoint"
let g:WhichKeyDesc_step_out = "<leader>du  Step Out"

" Find ---------------------
let g:WhichKeyDesc_find = "<leader>f  Find"

let g:WhichKeyDesc_goto_action = "<leader>fa  Action"
let g:WhichKeyDesc_goto_class = "<leader>fc  Class"
let g:WhichKeyDesc_search_everywhere = "<leader>fe  Everywhere"
let g:WhichKeyDesc_goto_file = "<leader>ff  File"
let g:WhichKeyDesc_goto_endpoints = "<leader>fh  Endpoint"
let g:WhichKeyDesc_find_in_path = "<leader>fP  In Path"
let g:WhichKeyDesc_open_file = "<leader>fp  Project"
let g:WhichKeyDesc_switcher = "<leader>fr  Recent"
let g:WhichKeyDesc_goto_symbol = "<leader>fs  Symbol"
let g:WhichKeyDesc_goto_test = "<leader>ft  Test"
let g:WhichKeyDesc_find_usages = "<leader>fu  Usages"

" Git ---------------------
let g:WhichKeyDesc_git = "<leader>g  Git"

let g:WhichKeyDesc_editor_gutter_vcs_popup_menu = "<leader>gB  Git Blame"
let g:WhichKeyDesc_git_compare_with_branch = "<leader>gC  Compare With Branch"
let g:WhichKeyDesc_vcs_show_tabbed_file_history = "<leader>gH  File History"
let g:WhichKeyDesc_git_push_up_to_commit = "<leader>gP  Push"
let g:WhichKeyDesc_git_resolve_conflicts = "<leader>gR  Resolve Conflicts"
let g:WhichKeyDesc_vcs_rollback_changed_lines = "<leader>gU  Rollback Changed Line"
let g:WhichKeyDesc_git_add = "<leader>ga  Add Files"
let g:WhichKeyDesc_git_branches = "<leader>gb  Checkout Branch"
let g:WhichKeyDesc_activate_commit_tool_window = "<leader>gc  Commit"
let g:WhichKeyDesc_git_delete_branch_action = "<leader>gd  Delete Branch"
let g:WhichKeyDesc_git_fetch = "<leader>gf  Fetch"
let g:WhichKeyDesc_activate_version_control_tool_window = "<leader>gh  History"
let g:WhichKeyDesc_git_init = "<leader>gi  Init New Repository"
let g:WhichKeyDesc_git_merge = "<leader>gm  Merge Branches"
let g:WhichKeyDesc_git_create_new_branch = "<leader>gn  Create New Branch"
let g:WhichKeyDesc_git_pull = "<leader>gp  Pull"
let g:WhichKeyDesc_git_stash = "<leader>gs  Stash Changes"
let g:WhichKeyDesc_git_unstash = "<leader>gu  Unstash Changes"
let g:WhichKeyDesc_vcs_show_current_change_marker = "<leader>gy  Show Current Change In Line"
let g:WhichKeyDesc_git_reset = "<leader>gz  Reset Changes"

" IntelliJ IDEA ---------------------
let g:WhichKeyDesc_run_options = "<leader>i  Intellij IDEA"

let g:WhichKeyDesc_choose_run_configuration = "<leader>ic  Run Configuration"
let g:WhichKeyDesc_show_project_structure_settings = "<leader>ip  Project Structure Settings"
let g:WhichKeyDesc_show_settings = "<leader>is  Settings"

" Java ---------------------
let g:WhichKeyDesc_java = "<leader>j  Java"

let g:WhichKeyDesc_generate_getter_and_setter = "<leader>ja  Generate Getters And Setters"
let g:WhichKeyDesc_generate_constructor = "<leader>jc  Generate Constructor"
let g:WhichKeyDesc_quick_javadoc = "<leader>jd  Quick Javadoc"
let g:WhichKeyDesc_generate = "<leader>jG  Generate"
let g:WhichKeyDesc_generate_getter = "<leader>jg  Generate Getters"
let g:WhichKeyDesc_implement_methods = "<leader>ji  Implement Methods"
let g:WhichKeyDesc_override_methods = "<leader>jo  Override Methods"
let g:WhichKeyDesc_generate_setter = "<leader>js  Generate Setters"

" Maven ---------------------
let g:WhichKeyDesc_maven = "<leader>jm  Maven"

let g:WhichKeyDesc_maven_download_all_sources = "<leader>jmd  Maven Download All Sources"
let g:WhichKeyDesc_maven_sync_incrementally = "<leader>jms  Maven Sync Incrementally"

" LSP ---------------------
let g:WhichKeyDesc_lsp = "<leader>l  LSP"

let g:WhichKeyDesc_show_intention_actions = "<leader>la  Code Actions"
let g:WhichKeyDesc_quick_definition = "<leader>ld  Definition"
let g:WhichKeyDesc_goto_declaration = "<leader>lD  Declaration"
let g:WhichKeyDesc_show_error_description = "<leader>le  Diagnostics"
let g:WhichKeyDesc_reformat_code = "<leader>lf  Format"
let g:WhichKeyDesc_highlight_usages_in_file = "<leader>lh  Highlight Usages In File"
let g:WhichKeyDesc_goto_implementation = "<leader>li  Implementation"
let g:WhichKeyDesc_show_hover_info = "<leader>lI  Show Hover Info"
let g:WhichKeyDesc_optimize_imports = "<leader>lo  Optimize Imports"
let g:WhichKeyDesc_quick_preview = "<leader>lp  Preview"
let g:WhichKeyDesc_rename_element = "<leader>lr  Rename"
let g:WhichKeyDesc_quick_type_definition = "<leader>lt  Type Definition"
let g:WhichKeyDesc_show_usages = "<leader>lu  References"

" Bookmarks ---------------------
let g:WhichKeyDesc_mark = "<leader>m  Bookmarks"

let g:WhichKeyDesc_goto_next_bookmark = "<leader>mn  Next Bookmark"
let g:WhichKeyDesc_goto_previous_bookmark = "<leader>mp  Previous Bookmark"
let g:WhichKeyDesc_show_bookmark = "<leader>ms  Show Bookmarks"
let g:WhichKeyDesc_toggle_bookmark = "<leader>mt  Toggle Bookmark"

" Search ---------------------
let g:WhichKeyDesc_search = "<leader>s  Search"

let g:WhichKeyDesc_flash = "<leader>sf  Flash" 

" UI ---------------------
let g:WhichKeyDesc_ui_toggles = "<leader>u  UI"

let g:WhichKeyDesc_change_color_schema = "<leader>uc  Colorscheme"
let g:WhichKeyDesc_distraction_free_mode = "<leader>uf   Toggle Distraction Free Mode"
let g:WhichKeyDesc_zen_mode = "<leader>uz   Toggle Zen Mode"
let g:WhichKeyDesc_view_status_bar = "<leader>us   Toggle Status Bar"
let g:WhichKeyDesc_view_tool_buttons = "<leader>ut   Toggle Tool Buttons"

" Extract & Introduce: descriptions and maps ---------------------

" let g:WhichKeyDesc_extract_actions = "<leader>x  Extract & Introduce"
"
" let g:WhichKeyDesc_inline = "<leader>xa  Inline"
" let g:WhichKeyDesc_extract_class = "<leader>xc  Extract Class"
" let g:WhichKeyDesc_introduce_field = "<leader>xf  Introduce Field"
" let g:WhichKeyDesc_extract_interface = "<leader>xi  Extract Interface"
" let g:WhichKeyDesc_extract_method = "<leader>xm  Extract Method"
" let g:WhichKeyDesc_introduce_parameter = "<leader>xp   Introduce Parameter"
" let g:WhichKeyDesc_extract_superclass = "<leader>xs  Extract Superclass"
" let g:WhichKeyDesc_introduce_variable = "<leader>xv  Introduce Variable"
" let g:WhichKeyDesc_introduce_constant = "<leader>xx  Introduce Constant"
