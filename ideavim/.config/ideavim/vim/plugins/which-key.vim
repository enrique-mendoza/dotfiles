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

let g:WhichKeyDesc_leader = "<leader> leader"
let mapleader=" "

" Variables for custom keymaps based on the current IDE flavor (:echo &ide).
" https://github.com/JetBrains/ideavim/discussions/375
let is_ide_intellij_idea = &ide =~? 'intellij idea'

" General ---------------------
let g:WhichKeyDesc_terminal_ctrl = "<C-/> Terminal (Root Dir)"
nmap <C-/> <Action>(ActivateDebugToolWindow)

let g:WhichKeyDesc_signature_help_alt = "<C-k> Signature Help"
imap <C-k> <C-o><Action>(ParameterInfo)

let g:WhichKeyDesc_reference_next_alt = "<A-n> Next Reference"
nmap <a-n> <Action>(GotoNextElementUnderCaretUsage)

let g:WhichKeyDesc_reference_prev_alt = "<A-p> Prev Reference"
nmap <a-p> <Action>(GotoPrevElementUnderCaretUsage)

let g:WhichKeyDesc_reference_next = "]] Next Reference"
nmap ]] <Action>(GotoNextElementUnderCaretUsage)

let g:WhichKeyDesc_reference_prev = "[[ Prev Reference"
nmap [[ <Action>(GotoPrevElementUnderCaretUsage)

let g:WhichKeyDesc_buffer_prev_alt = "[b Prev Buffer"
nmap [b <Action>(PreviousTab)

let g:WhichKeyDesc_buffer_next_alt = "]b Next Buffer"
nmap ]b <Action>(NextTab)

let g:WhichKeyDesc_diagnostic_next = "]d Next Diagnostic"
nmap ]d <Action>(GotoNextError)

let g:WhichKeyDesc_diagnostic_prev = "[d Prev Diagnostic"
nmap [d <Action>(GotoPreviousError)

let g:WhichKeyDesc_error_next = "]e Next Error"
nmap ]e <Action>(GotoNextError)

let g:WhichKeyDesc_error_prev = "[e Prev Error"
nmap [e <Action>(GotoPreviousError)

let g:WhichKeyDesc_todo_prev = "[t Previous Todo Comment"
nmap [t ?\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<cr>

let g:WhichKeyDesc_todo_next = "]t Next Todo Comment"
nmap ]t /\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<cr>

let g:WhichKeyDesc_quickfix_prev = "[q Previous Quickfix"
nmap [q <Action>(GotoPreviousError)

let g:WhichKeyDesc_quickfix_next = "]q Next Quickfix"
nmap ]q <Action>(GotoNextError)

let g:WhichKeyDesc_warning_next = "]w Next Warning"
nmap ]w <Action>(GotoNextError)

let g:WhichKeyDesc_warning_prev = "[w Prev Warning"
nmap [w <Action>(GotoPreviousError)

let g:WhichKeyDesc_escape_clear = "<esc> Escape and Clear hlsearch"
nmap <esc> :nohlsearch<CR>

let g:WhichKeyDesc_comment_below = "gco Add Comment Below"
nmap gco o<c-o>gcc

let g:WhichKeyDesc_comment_above = "gcO Add Comment Above"
nmap gcO O<c-o>gcc

let g:WhichKeyDesc_goto_declaration = "gD Goto Declaration"
nmap gD <Action>(GotoDeclaration)

let g:WhichKeyDesc_goto_definition = "gd Goto Definition"
nmap gd <Action>(GotoDeclaration)

let g:WhichKeyDesc_goto_implementation = "gI Goto Implementation"
nmap gI <Action>(GotoImplementation)

let g:WhichKeyDesc_signature_help = "gK Signature Help"
nmap gK <Action>(ParameterInfo)

let g:WhichKeyDesc_references = "gr References"
nmap gr <Action>(FindUsages)

let g:WhichKeyDesc_goto_type = "gy Goto T[y]pe Definition"
nmap gy <Action>(GotoTypeDeclaration)

let g:WhichKeyDesc_buffers = "<leader>, Buffers"
nmap <leader>, <Action>(Switcher)

let g:WhichKeyDesc_split_below = "<leader>- Split Window Below"
nmap <leader>- <c-w>s

let g:WhichKeyDesc_grep = "<leader>/ Grep (Root Dir)"
nmap <leader>/ <Action>(FindInPath)

let g:WhichKeyDesc_command_history = "<leader>: Command History"
nmap <leader>: :history<cr>

let g:WhichKeyDesc_buffer_switch_alt = "<leader>` Switch to Other Buffer"
nnoremap <leader>` <C-^>

let g:WhichKeyDesc_split_right = "<leader>| Split Window Right"
nmap <leader><bar> <c-w>v

let g:WhichKeyDesc_find_files = "<leader><space> Find Files (Root Dir)"
nmap <leader><space> <Action>(GotoFile)

let g:WhichKeyDesc_harpoon_file = "<leader>H Harpoon File"
nmap <leader>H <Action>(ToggleBookmark)
" nmap <leader>h <Action>(AddToHarpoon)
"
let g:WhichKeyDesc_harpoon_quick_menu = "<leader>h Harpoon Quick Menu"
nmap <leader>h <Action>(ShowBookmarks)
" nmap <leader>H <Action>(ShowHarpoon)

let g:WhichKeyDesc_plugins = "<leader>p Plugins"
nmap <leader>p <Action>(WelcomeScreen.Plugins)

let g:WhichKeyDesc_reload_idea_vim = "<leader>r Reload IdeaVim"
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)

" Buffers ---------------------
let g:WhichKeyDesc_leader_b = "<leader>b buffers"

let g:WhichKeyDesc_buffer_switch = "<leader>bb Switch to Other Buffer"
nnoremap <leader>bb <C-^>

let g:WhichKeyDesc_buffer_delete = "<leader>bd Delete Buffer"
nmap <leader>bd <Action>(CloseContent)

let g:WhichKeyDesc_buffer_delete_window = "<leader>bD Delete Buffer and Window"
nmap <leader>bD <Action>(CloseContent)

let g:WhichKeyDesc_buffer_left = "<leader>bl Delete Buffers to the Left"
nmap <leader>bl <Action>(CloseAllToTheLeft)

let g:WhichKeyDesc_buffer_delete_others = "<leader>bo Delete Other Buffers"
nmap <leader>bo <Action>(CloseAllEditorsButActive)

let g:WhichKeyDesc_buffer_pin = "<leader>bp Toggle Pin"
nmap <leader>bp <Action>(PinActiveTabToggle)

let g:WhichKeyDesc_buffer_pin_delete = "<leader>bP Delete Non-Pinned Buffers"
nmap <leader>bP <Action>(CloseAllUnpinnedEditors)

let g:WhichKeyDesc_buffer_right = "<leader>br Delete Buffers to the Right"
nmap <leader>br <Action>(CloseAllToTheRight)

" Code ---------------------
let g:WhichKeyDesc_leader_c = "<leader>c code"

let g:WhichKeyDesc_code_action = "<leader>ca Code Action"
nmap <leader>ca <Action>(RefactoringMenu)
vmap <leader>ca <Action>(RefactoringMenu)

let g:WhichKeyDesc_code_source_action = "<leader>cA Source Action"
nmap <leader>cA <Action>(ShowIntentionActions)

let g:WhichKeyDesc_code_diagnostics_line = "<leader>cd Line Diagnostics"
nmap <leader>cd <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_code_format = "<leader>cf Format"
nmap <leader>cf <Action>(Format)
vmap <leader>cf <Action>(Format)

let g:WhichKeyDesc_code_rename = "<leader>cr Rename"
nmap <leader>cr <Action>(RenameElement)

let g:WhichKeyDesc_code_rename_file = "<leader>cR Rename File"
nmap <leader>cR <Action>(RenameFile)

" Debug --------------------
let g:WhichKeyDesc_leader_d = "<leader>d debug"

let g:WhichKeyDesc_debug_args = "<leader>da Run with Args"
nmap <leader>da <Action>(ChooseRunConfiguration)

let g:WhichKeyDesc_debug_breakpoint = "<leader>db Toggle Breakpoint"
nmap <leader>db <Action>(ToggleLineBreakpoint)

let g:WhichKeyDesc_debug_breakpoint_condition = "<leader>dB Breakpoint Condition"
nmap <leader>dB <Action>(AddConditionalBreakpoint)

let g:WhichKeyDesc_debug_continue = "<leader>dc Run/Continue"
nmap <leader>dc <Action>(Resume)

let g:WhichKeyDesc_debug_cursor = "<leader>dC Run to Cursor"
nmap <leader>dC <Action>(ForceRunToCursor)

let g:WhichKeyDesc_debug_eval = "<leader>de Eval"
nmap <leader>de <Action>(EvaluateExpression)
vmap <leader>de <Action>(EvaluateExpression)

let g:WhichKeyDesc_debug_step_into = "<leader>di Step Into"
nmap <leader>di <Action>(StepInto)

let g:WhichKeyDesc_debug_down = "<leader>dj Down"
nmap <leader>dj <Action>(GotoNextError)

let g:WhichKeyDesc_debug_up = "<leader>dk Up"
nmap <leader>dk <Action>(GotoPreviousError)

let g:WhichKeyDesc_debug_last = "<leader>dl Run Last"
nmap <leader>dl <Action>(Debug)

let g:WhichKeyDesc_debug_step_out = "<leader>do Step Out"
nmap <leader>do <Action>(StepOut)

let g:WhichKeyDesc_debug_step_over = "<leader>dO Step Over"
nmap <leader>dO <Action>(StepOver)

let g:WhichKeyDesc_debug_pause = "<leader>dP Pause"
nmap <leader>dP <Action>(Pause)

let g:WhichKeyDesc_debug_repl = "<leader>dr Toggle REPL"
nmap <leader>dr <Action>(JShell.Console)

let g:WhichKeyDesc_debug_terminate = "<leader>dt Terminate"
nmap <leader>dt <Action>(Stop)

let g:WhichKeyDesc_debug_ui = "<leader>du Dap UI"
nmap <leader>du <Action>(ActivateDebugToolWindow)

" File/Find ----------------
let g:WhichKeyDesc_leader_f = "<leader>f file/find"

let g:WhichKeyDesc_find_buffers = "<leader>fb Buffers"
nmap <leader>fb <Action>(Switcher)

let g:WhichKeyDesc_find_config = "<leader>fc Find Config File"
nmap <leader>fc <Action>(GotoFile)

let g:WhichKeyDesc_explorer_alt = "<leader>fe Explorer NeoTree (Root Dir)"
nmap <leader>fe :NERDTree<CR>

let g:WhichKeyDesc_explorer_cwd_alt = "<leader>fE Explorer NeoTree (cwd)"
nmap <leader>fE :NERDTree<CR>

let g:WhichKeyDesc_find_files_alt = "<leader>ff Find Files (Root Dir)"
nmap <leader>ff <Action>(GotoFile)

let g:WhichKeyDesc_find_files_cwd = "<leader>fF Find Files (cwd)"
nmap <leader>fF <Action>(GotoFile)

let g:WhichKeyDesc_find_git_files = "<leader>fg Find Files (git-files)"
nmap <leader>fg <Action>(GotoFile)

let g:WhichKeyDesc_find_endpoints = "<leader>fh Find Endpoints"
nmap <leader>fh <Action>(GotoUrlAction)

let g:WhichKeyDesc_file_new = "<leader>fn New File"
nmap <leader>fn <Action>(NewElementSamePlace)

let g:WhichKeyDesc_find_projects = "<leader>fp Projects"
nmap <leader>fp <Action>(OpenFile)

let g:WhichKeyDesc_find_recent = "<leader>fr Recent"
nmap <leader>fr <Action>(RecentFiles)

let g:WhichKeyDesc_find_recent_cwd = "<leader>fR Recent (cwd)"
nmap <leader>fR <Action>(RecentFiles)

let g:WhichKeyDesc_terminal = "<leader>ft Terminal (Root Dir)"
nmap <leader>ft <Action>(ActivateTerminalToolWindow)

let g:WhichKeyDesc_terminal_cwd = "<leader>fT Terminal (cwd)"
nmap <leader>fT <Action>(ActivateTerminalToolWindow)

" Git ---------------------
let g:WhichKeyDesc_leader_g = "<leader>g git"

let g:WhichKeyDesc_git_blame = "<leader>gb Git Blame Line"
nmap <leader>gb <Action>(Annotate)

let g:WhichKeyDesc_git_browse = "<leader>gB Git Browse (open)"
nmap <leader>gB <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_show_diff = "<leader>gd Git Diff"
nmap <leader>gd <Action>(Compare.SameVersion)

let g:WhichKeyDesc_git_show_diff_changed_lines = "<leader>gD Git Diff (Hunks)"
nmap <leader>gD <Action>(Vcs.ShowDiffChangedLines)

let g:WhichKeyDesc_git_file_history = "<leader>gf Git File History"
nmap <leader>gf <Action>(Vcs.ShowTabbedFileHistory)

let g:WhichKeyDesc_git_ui = "<leader>gg GitUi (Root Dir)"
nmap <leader>gg <Action>(ActivateCommitToolWindow)

let g:WhichKeyDesc_git_ui_cwd = "<leader>gG GitUi (cwd)"
nmap <leader>gG <Action>(ActivateCommitToolWindow)

let g:WhichKeyDesc_git_log = "<leader>gl Git Log"
nmap <leader>gl <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_log_cwd = "<leader>gL Git Log (cwd)"
nmap <leader>gL <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_status = "<leader>gs Git Status"
nmap <leader>gs <Action>(Vcs.Show.Log)

let g:WhichKeyDesc_git_stash = "<leader>gS Git Stash"
nmap <leader>gs <Action>(Git.Stash)

" Git Hunks ---------------------
let g:WhichKeyDesc_leader_g_h = "<leader>gh hunks"

let g:WhichKeyDesc_git_hunks_prev_hunk = "<leader>ghj Previous Hunk"
nmap <leader>ghj <Action>(VcsShowNextChangeMarker)

let g:WhichKeyDesc_git_hunks_next_hunk = "<leader>ghk Next Hunk"
nmap <leader>ghk <Action>(VcsShowPrevChangeMarker)

let g:WhichKeyDesc_git_hunks_preview_hunk_inline = "<leader>ghp Preview Hunk Inline"
nmap <leader>ghp <Action>(VcsShowCurrentChangeMarker)

let g:WhichKeyDesc_git_hunks_reset_hunk = "<leader>ghr Reset Hunk"
nmap <leader>ghr <Action>(Vcs.RollbackChangedLines)

" Java ---------------------
if is_ide_intellij_idea |
  let g:WhichKeyDesc_leader_j = "<leader>j java"

  let g:WhichKeyDesc_java_generate_getter_and_setter = "<leader>ja Generate Getters And Setters"
  nmap <leader>ja <Action>(GenerateGetterAndSetter)

  let g:WhichKeyDesc_java_generate_constructor = "<leader>jc Generate Constructor"
  nmap <leader>jc <Action>(GenerateConstructor)

  let g:WhichKeyDesc_java_quick_javadoc = "<leader>jd Quick Javadoc"
  nmap <leader>jd <Action>(QuickJavaDoc)

  let g:WhichKeyDesc_java_generate = "<leader>jG Generate"
  nmap <leader>jG <Action>(Generate)

  let g:WhichKeyDesc_java_generate_getter = "<leader>jg Generate Getters"
  nmap <leader>jg <Action>(GenerateGetter)

  let g:WhichKeyDesc_java_implement_methods = "<leader>ji Implement Methods"
  nmap <leader>ji <Action>(ImplementMethods)

  let g:WhichKeyDesc_java_override_methods = "<leader>jo Override Methods"
  nmap <leader>jo <Action>(OverrideMethods)

  let g:WhichKeyDesc_java_generate_setter = "<leader>js Generate Setters"
  nmap <leader>js <Action>(GenerateSetter)

  " Maven ---------------------
  let g:WhichKeyDesc_leader_j_m = "<leader>jm maven"

  let g:WhichKeyDesc_maven_download_all_sources = "<leader>jmd Maven Download All Sources"
  nmap <leader>jmd <Action>(Maven.DownloadAllSources)

  let g:WhichKeyDesc_maven_sync_incrementally = "<leader>jms Maven Sync Incrementally"
  nmap <leader>jms <Action>(Maven.SyncIncrementally)

| endif

" Quit --------------------
let g:WhichKeyDesc_leader_q = "<leader>q quit"

let g:WhichKeyDesc_quit_all = "<leader>qq Quit All"
nmap <leader>qq <Action>(Exit)

" Search -----------------------
let g:WhichKeyDesc_leader_s = "<leader>s search"

let g:WhichKeyDesc_search_registers = "<leader>s\" Registers"
nmap <leader>s" :registers<cr>

let g:WhichKeyDesc_search_buffer = "<leader>sb Buffer Lines"
nmap <leader>sb <Action>(Switcher)

let g:WhichKeyDesc_search_command_history = "<leader>sc Command History"
nmap <leader>sc :history<cr>

let g:WhichKeyDesc_search_commands = "<leader>sC Commands"
nmap <leader>sC <Action>(GotoAction)

let g:WhichKeyDesc_search_diagnostics = "<leader>sd Diagnostics"
nmap <leader>sd <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_diagnostics_workspace = "<leader>sD Workspace Diagnostics"
nmap <leader>sD <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_grep = "<leader>sg Grep (Root Dir)"
nmap <leader>sg <Action>(FindInPath)

let g:WhichKeyDesc_search_grep_cwd = "<leader>sG Grep (cwd)"
nmap <leader>sG <Action>(FindInPath)

let g:WhichKeyDesc_search_help = "<leader>sh Help Pages"
nmap <leader>sh <Action>(HelpTopics)

let g:WhichKeyDesc_search_highlights = "<leader>sH Highlights"
nmap <leader>sH <Action>(HighlightUsagesInFile)

let g:WhichKeyDesc_search_jumps = "<leader>sj Jumps"
nmap <leader>sj <Action>(RecentLocations)

let g:WhichKeyDesc_search_keymaps = "<leader>sk Keymaps"
nmap <leader>sk :map<cr>

let g:WhichKeyDesc_search_location_list = "<leader>sl Location List"
nmap <leader>sl <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_marks = "<leader>sm Marks"
nmap <leader>sm :marks<cr>

let g:WhichKeyDesc_search_man = "<leader>sM Man Pages"
nmap <leader>sM <Action>(ShowDocumentation)

let g:WhichKeyDesc_search_options = "<leader>so Options"
nmap <leader>so <Action>(ShowSettings)

let g:WhichKeyDesc_search_quickfix = "<leader>sq Quickfix List"
nmap <leader>sq <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_search_symbol = "<leader>ss Goto Symbol"
nmap <leader>ss <Action>(GotoSymbol)

let g:WhichKeyDesc_search_symbol_workspace = "<leader>sS Goto Symbol (Workspace)"
nmap <leader>sS <Action>(GotoSymbol)

let g:WhichKeyDesc_search_todo = "<leader>st Todo"
nmap <leader>st <Action>(ActivateTODOToolWindow)

let g:WhichKeyDesc_search_todo_fixme = "<leader>sT Todo/Fix/Fixme"
nmap <leader>sT <Action>(ActivateTODOToolWindow)

let g:WhichKeyDesc_search_word = "<leader>sw Visual selection or word (Root Dir)"
nmap <leader>sw mzviw<Action>(FindInPath)<esc>`z
vmap <leader>sw <Action>(FindInPath)

let g:WhichKeyDesc_search_word_cwd = "<leader>sW Visual selection or word (cwd)"
nmap <leader>sW mzviw<Action>(FindInPath)<esc>`z
vmap <leader>sW <Action>(FindInPath)

" Test --------------------
let g:WhichKeyDesc_leader_t = "<leader>t test"

let g:WhichKeyDesc_test_debug = "<leader>td Debug Nearest"
nmap <leader>td <Action>(ChooseDebugConfiguration)

let g:WhichKeyDesc_test_last = "<leader>tl Run Last (Neotest)"
nmap <leader>tl <Action>(Run)

let g:WhichKeyDesc_test_output_panel = "<leader>tO Toggle Output Panel (Neotest)"
nmap <leader>tO <Action>(ActivateRunToolWindow)

let g:WhichKeyDesc_test_output = "<leader>to Show Output (Neotest)"
nmap <leader>to <Action>(ActivateRunToolWindow)

let g:WhichKeyDesc_test_nearest = "<leader>tr Run Nearest (Neotest)"
nmap <leader>tr <Action>(RunClass)

let g:WhichKeyDesc_test_stop = "<leader>tS Stop (Neotest)"
nmap <leader>tS <Action>(Stop)

let g:WhichKeyDesc_test_file = "<leader>tt Run File (Neotest)"
nmap <leader>tt <Action>(RunClass)

" Ui ----------------------
let g:WhichKeyDesc_leader_u = "<leader>u ui"

let g:WhichKeyDesc_ui_background = "<leader>ub Toggle Dark Background"
nmap <leader>ub <Action>(QuickChangeScheme)

let g:WhichKeyDesc_ui_colorscheme = "<leader>uC Colorschemes"
nmap <leader>uC <Action>(QuickChangeScheme)

let g:WhichKeyDesc_ui_diagnostics = "<leader>ud Toggle Diagnostics"
nmap <leader>ud <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_ui_inlay_hints = "<leader>uh Toggle Inlay Hints"
nmap <leader>uh <Action>(ToggleInlayHintsGloballyAction)

let g:WhichKeyDesc_inspect_pos = "<leader>ui Inspect Pos"
nmap <leader>ui <Action>(ActivateStructureToolWindow)

let g:WhichKeyDesc_inspect_tree = "<leader>uI Inspect Tree"
nmap <leader>uI <Action>(ActivateStructureToolWindow)

let g:WhichKeyDesc_ui_line_numbers = "<leader>ul Toggle Line Numbers"
nmap <leader>ul :set number!<CR>

let g:WhichKeyDesc_ui_relative_number = "<leader>uL Toggle Relative Number"
nmap <leader>uL :set relativenumber!<CR>

let g:WhichKeyDesc_ui_notifications = "<leader>un Dismiss All Notifications"
nmap <leader>un <Action>(ClearAllNotifications)

let g:WhichKeyDesc_no_hl_search = "<leader>ur Redraw / Clear hlsearch / Diff Update"
nmap <leader>ur :nohlsearch<CR>

let g:WhichKeyDesc_ui_spelling = "<leader>us Toggle Spelling"
nmap <leader>us :setlocal spell!<CR>

let g:WhichKeyDesc_ui_status_bar = "<leader>uS Toggle Status Bar"
nmap <leader>uS <Action>(ViewStatusBar)

let g:WhichKeyDesc_ui_tool_buttons = "<leader>ut Toggle Tool Buttons"
nmap <leader>ut <Action>(ViewToolButtons)

let g:WhichKeyDesc_ui_wrap = "<leader>uw Toggle Wrap"
nmap <leader>uw :setlocal wrap!<CR>

" Window ------------------
let g:WhichKeyDesc_leader_w = "<leader>w window"

let g:WhichKeyDesc_window_delete = "<leader>wd Delete Window"
nmap <leader>wd <Action>(CloseContent)

let g:WhichKeyDesc_window_maximize = "<leader>wm Toggle Zoom Mode"
nmap <leader>wm <Action>(ToggleDistractionFreeMode)

" Diagnostics/quickfix ----
let g:WhichKeyDesc_leader_x = "<leader>x diagnostics/quickfix"

let g:WhichKeyDesc_location_list = "<leader>xl Location List"
nmap <leader>xl <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_quickfix_list = "<leader>xq Quickfix List"
nmap <leader>xq <Action>(ActivateProblemsViewToolWindow)

let g:WhichKeyDesc_quickfix_todo = "<leader>xt Todo (Trouble)"
nmap <leader>xt <Action>(ActivateTODOToolWindow)

let g:WhichKeyDesc_quickfix_todo_fixme = "<leader>xT Todo/Fix/Fixme (Trouble)"
nmap <leader>xT <Action>(ActivateTODOToolWindow)

" Tabs ---------------------
let g:WhichKeyDesc_leader_tab = "<leader><tab> tabs"

let g:WhichKeyDesc_tab_last = "<leader><tab>l Last Tab"
nmap <leader><tab>l <Action>(StoreDefaultLayout)<Action>(ChangeToolWindowLayout)

let g:WhichKeyDesc_tab_close_others = "<leader><tab>o Close Other Tabs"
nmap <leader><tab>o :<cr>

let g:WhichKeyDesc_tab_first = "<leader><tab>f First Tab"
nmap <leader><tab>f <Action>(StoreDefaultLayout)<Action>(ChangeToolWindowLayout)

let g:WhichKeyDesc_tab_new = "<leader><tab><tab> New Tab"
nmap <leader><tab>f <Action>(StoreDefaultLayout)<Action>(StoreNewLayout)

let g:WhichKeyDesc_tab_next = "<leader><tab>] Next Tab"
nmap <leader><tab>] <Action>(StoreDefaultLayout)<Action>(ChangeToolWindowLayout)

let g:WhichKeyDesc_tab_previous = "<leader><tab>[ Previous Tab"
nmap <leader><tab>[ <Action>(StoreDefaultLayout)<Action>(ChangeToolWindowLayout)

let g:WhichKeyDesc_tab_close = "<leader><tab>d Close Tab"
nmap <leader><tab>f <Action>(StoreDefaultLayout)<Action>(ChangeToolWindowLayout)
