" ██╗    ██╗██╗  ██╗██╗ ██████╗██╗  ██╗      ██╗  ██╗███████╗██╗   ██╗
" ██║    ██║██║  ██║██║██╔════╝██║  ██║      ██║ ██╔╝██╔════╝╚██╗ ██╔╝
" ██║ █╗ ██║███████║██║██║     ███████║█████╗█████╔╝ █████╗   ╚████╔╝
" ██║███╗██║██╔══██║██║██║     ██╔══██║╚════╝██╔═██╗ ██╔══╝    ╚██╔╝
" ╚███╔███╔╝██║  ██║██║╚██████╗██║  ██║      ██║  ██╗███████╗   ██║
"  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝      ╚═╝  ╚═╝╚══════╝   ╚═╝

let g:WhichKey_CommandStyle = "none"
let g:WhichKey_FontFamily = "JetBrainsMono Nerd Font"
let g:WhichKey_FontSize = 15
let g:WhichKey_KeyStyle = "none"
let g:WhichKey_ShowTypedSequence = "true"
let g:WhichKey_ShowVimActions = "true"
let g:WhichKey_PrefixStyle = "none"
let g:WhichKey_Divider = "  "

"   ██╗██████╗ ███████╗ █████╗      █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
"   ██║██╔══██╗██╔════╝██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
"   ██║██║  ██║█████╗  ███████║    ███████║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
"   ██║██║  ██║██╔══╝  ██╔══██║    ██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
"   ██║██████╔╝███████╗██║  ██║    ██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
"   ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

" Variables for custom keymaps based on the current IDE flavor (:echo &ide).
" https://github.com/JetBrains/ideavim/discussions/375
let is_ide_intellij_idea = &ide =~? 'intellij idea'

let g:WhichKeyDesc_leader = "<leader> Leader"
let mapleader=" "

" General ---------------------
let g:WhichKeyDesc_terminal = "<C-/> Terminal (Root Dir)"
let g:WhichKeyDesc_hide_active_window = "<C-=> Close Active Window"

let g:WhichKeyDesc_signature_help_alt = "<C-k> Signature Help"

let g:WhichKeyDesc_reference_previous = "[[ Prev Reference"
let g:WhichKeyDesc_reference_next = "]] Next Reference"

let g:WhichKeyDesc_buffer_previous_alt = "[b Prev Buffer"
let g:WhichKeyDesc_buffer_next_alt = "]b Next Buffer"

let g:WhichKeyDesc_error_previous = "[e Prev Error"
let g:WhichKeyDesc_error_next = "]e Next Error"

let g:WhichKeyDesc_todo_previous = "[t Previous Todo Comment"
let g:WhichKeyDesc_todo_next = "]t Next Todo Comment"

let g:WhichKeyDesc_quickfix_previous = "[q Previous Quickfix"
let g:WhichKeyDesc_quickfix_next = "]q Next Quickfix"

let g:WhichKeyDesc_comment_below = "gco Add Comment Below"
let g:WhichKeyDesc_comment_above = "gcO Add Comment Above"

let g:WhichKeyDesc_goto_declaration = "gD Goto Declaration"
let g:WhichKeyDesc_goto_definition = "gd Goto Definition"
let g:WhichKeyDesc_goto_implementation = "gI Goto Implementation"
let g:WhichKeyDesc_signature_help = "gK Signature Help"
let g:WhichKeyDesc_references = "gr References"
let g:WhichKeyDesc_goto_type = "gy Goto T[y]pe Definition"

let g:WhichKeyDesc_split_horizontally = "<leader>|  Split Horizontally"
let g:WhichKeyDesc_split_vertically = "<leader>-  Split Horizontally"

let g:WhichKeyDesc_plugins = "<leader>p  Plugins"
let g:WhichKeyDesc_reload_idea_vim = "<leader>r  Reload IdeaVim"
let g:WhichKeyDesc_bookmarks_show_list = "<leader>h  Harpoon Quick Menu"
let g:WhichKeyDesc_bookmarks_toggle = "<leader>H  Harpoon File"

" Tab ------------------------
let g:WhichKeyDesc_tab = "<leader><tab>  Tabs"

let g:WhichKeyDesc_tab_previous = "<leader><tab>[  Previous Tab"
let g:WhichKeyDesc_tab_next = "<leader><tab>]  Next Tab"
let g:WhichKeyDesc_tab_close = "<leader><tab>d  Close Tab"
let g:WhichKeyDesc_tab_close_others = "<leader><tab>o 󰌒 Close Other Tabs"

" Code ------------------------
let g:WhichKeyDesc_code = "<leader>c  Code"

let g:WhichKeyDesc_code_source_action = "<leader>cA  Source Action"
let g:WhichKeyDesc_code_code_actions = "<leader>ca  Code Action"
let g:WhichKeyDesc_code_format = "<leader>cf  Format"
let g:WhichKeyDesc_code_optimize_imports = "<leader>co  Optimize Imports"
let g:WhichKeyDesc_code_rename_file = "<leader>cR  Rename File"
let g:WhichKeyDesc_code_rename_element = "<leader>cr  Rename"

" Buffers ---------------------
let g:WhichKeyDesc_buffers = "<leader>b  Buffers"

let g:WhichKeyDesc_buffers_delete = "<leader>bd  Delete buffer"
let g:WhichKeyDesc_buffers_move_left = "<leader>bh  Move Tab Into Left Group"
let g:WhichKeyDesc_buffers_move_down = "<leader>bj  Move Tab Into Below Group"
let g:WhichKeyDesc_buffers_move_up = "<leader>bk  Move Tab Into Above Group"
let g:WhichKeyDesc_buffers_move_right = "<leader>bl  Move Tab Into Right Group"
let g:WhichKeyDesc_buffers_reopen = "<leader>br  Reopen Closed Editor"
let g:WhichKeyDesc_buffers_move_to_opposite_tab_group = "<leader>bt  Move Editor To Opposite Tab Group"
let g:WhichKeyDesc_buffers_change_split_orientation = "<leader>by  Change Split Orientation"
let g:WhichKeyDesc_buffers_unsplit = "<leader>bu  Unsplit"

" Debug ---------------------
let g:WhichKeyDesc_debug = "<leader>d  Debug"

let g:WhichKeyDesc_debug_step_back = "<leader>db  Step Back"
let g:WhichKeyDesc_debug_run_to_cursor = "<leader>dC  Run To Cursor"
let g:WhichKeyDesc_debug_resume = "<leader>dc  Continue"
let g:WhichKeyDesc_debug_interrupt_thread = "<leader>dd  Disconnect"
let g:WhichKeyDesc_debug_step_into = "<leader>di  Step Into"
let g:WhichKeyDesc_debug_evaluate_expression = "<leader>de  Evaluate Expression"
let g:WhichKeyDesc_debug_mute_all_breakpoints = "<leader>dm  Mute All Breakpoints"
let g:WhichKeyDesc_debug_step_over = "<leader>do  Step Over"
let g:WhichKeyDesc_debug_pause = "<leader>dp  Pause"
let g:WhichKeyDesc_debug_stop = "<leader>dq  Stop"
let g:WhichKeyDesc_debug_remove_all_breakpoints = "<leader>dR  Remove All Breakpoints"
let g:WhichKeyDesc_debug_remove_all_breakpoints_in_file = "<leader>dr  Remove All Breakpoints In File"
let g:WhichKeyDesc_debug_run = "<leader>ds  Start"
let g:WhichKeyDesc_debug_toggle_line_breakpoint = "<leader>dt   Toggle Breakpoint"
let g:WhichKeyDesc_debug_step_out = "<leader>du  Step Out"

" Find ---------------------
let g:WhichKeyDesc_find = "<leader>f  Find"

let g:WhichKeyDesc_find_everywhere = "<leader>fe  Everywhere"
let g:WhichKeyDesc_find_files = "<leader>ff  File"
let g:WhichKeyDesc_file_new = "<leader>fn  New File"
let g:WhichKeyDesc_find_projects = "<leader>fp  Projects"
let g:WhichKeyDesc_find_recent_files = "<leader>fr  Recent"

" Git ---------------------
let g:WhichKeyDesc_git = "<leader>g  Git"

let g:WhichKeyDesc_git_blame = "<leader>gB  Git Blame"
let g:WhichKeyDesc_git_branches = "<leader>gb  Git Branches"
let g:WhichKeyDesc_git_diff_hunks = "<leader>gD   Git Diff (Hunks)"
let g:WhichKeyDesc_git_diff = "<leader>gd  Git Diff"
let g:WhichKeyDesc_git_log_file = "<leader>gf  Git Log File"
let g:WhichKeyDesc_git_log_line = "<leader>gL  Git Log Line"
let g:WhichKeyDesc_git_log = "<leader>gl  Git Log"
let g:WhichKeyDesc_git_git_stash = "<leader>gs  Git Stash"
let g:WhichKeyDesc_git_unstash = "<leader>gu  Git Unstash"

" Git Hunks ---------------------
let g:WhichKeyDesc_git_hunks = "<leader>gh  Hunks"

let g:WhichKeyDesc_git_hunks_previous = "<leader>ghp  Previous Hunk"
let g:WhichKeyDesc_git_hunks_next = "<leader>ghn  Next Hunk"
let g:WhichKeyDesc_git_hunks_preview_inline = "<leader>ghp  Preview Hunk Inline"
let g:WhichKeyDesc_git_hunks_reset = "<leader>ghr  Reset Hunk"

if is_ide_intellij_idea |
  " IntelliJ IDEA ---------------------
  let g:WhichKeyDesc_intellij_idea = "<leader>i  Intellij IDEA"

  let g:WhichKeyDesc_intellij_idea_run_configuration = "<leader>ic  Run Configuration"
  let g:WhichKeyDesc_intellij_idea_project_structure_settings = "<leader>ip  Project Structure Settings"
  let g:WhichKeyDesc_intellij_idea_settings = "<leader>is  Settings"

  " Java ---------------------
  let g:WhichKeyDesc_java = "<leader>j  Java"

  let g:WhichKeyDesc_java_getter_and_setter = "<leader>ja  Generate Getters And Setters"
  let g:WhichKeyDesc_java_constructor = "<leader>jc  Generate Constructor"
  let g:WhichKeyDesc_java_quick_javadoc = "<leader>jd  Quick Javadoc"
  let g:WhichKeyDesc_java_generate = "<leader>jG  Generate"
  let g:WhichKeyDesc_java_getter = "<leader>jg  Generate Getters"
  let g:WhichKeyDesc_java_implement_methods = "<leader>ji  Implement Methods"
  let g:WhichKeyDesc_java_override_methods = "<leader>jo  Override Methods"
  let g:WhichKeyDesc_java_generate_setter = "<leader>js  Generate Setters"

  " Maven ---------------------
  let g:WhichKeyDesc_maven = "<leader>jm  Maven"

  let g:WhichKeyDesc_maven_download_all_sources = "<leader>jmd  Maven Download All Sources"
  let g:WhichKeyDesc_maven_sync_incrementally = "<leader>jms  Maven Sync Incrementally"
| endif

" Search ---------------------
let g:WhichKeyDesc_search = "<leader>s search"

let g:WhichKeyDesc_search_registers = "<leader>s\"  Registers"
let g:WhichKeyDesc_search_buffer_lines = "<leader>sb  Buffer Lines"
let g:WhichKeyDesc_search_action = "<leader>sC  Commands"
let g:WhichKeyDesc_search_history = "<leader>sc  Command History"
let g:WhichKeyDesc_search_diagnostics = "<leader>sd  Diagnostics"
let g:WhichKeyDesc_search_endpoints = "<leader>se  Endpoints"
let g:WhichKeyDesc_search_grep = "<leader>sg  Grep"
let g:WhichKeyDesc_search_highlights = "<leader>sH  Highlights"
let g:WhichKeyDesc_search_jumps = "<leader>sj  Jumps"
let g:WhichKeyDesc_search_keymaps = "<leader>sk  Keymaps"
let g:WhichKeyDesc_search_marks = "<leader>sm  Marks"
let g:WhichKeyDesc_search_symbols = "<leader>ss  Symbols"
let g:WhichKeyDesc_search_todos = "<leader>sT  Todo"
let g:WhichKeyDesc_search_tests = "<leader>st  Tests"

" UI ---------------------
let g:WhichKeyDesc_ui_toggles = "<leader>u  UI"

let g:WhichKeyDesc_ui_color_schema = "<leader>uc  Colorscheme"
let g:WhichKeyDesc_ui_distraction_free_mode = "<leader>uf   Toggle Distraction Free Mode"
let g:WhichKeyDesc_ui_no_hl_search = "<leader>ur  Clear search"
let g:WhichKeyDesc_ui_toggle_status_bar = "<leader>us   Toggle Status Bar"
let g:WhichKeyDesc_ui_toggle_tool_buttons = "<leader>ut   Toggle Tool Buttons"
let g:WhichKeyDesc_ui_zen_mode = "<leader>uz   Toggle Zen Mode"
