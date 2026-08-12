" Debug Keymaps (<leader>d)
let g:WhichKeyDesc_debug = "<leader>d +debug"

let g:WhichKeyDesc_debug_add_conditional_breakpoint = "<leader>dB Breakpoint Condition"
nmap <leader>dB <Action>(AddConditionalBreakpoint)

let g:WhichKeyDesc_debug_force_run_to_cursor = "<leader>dC Run To Cursor"
nmap <leader>dC <Action>(ForceRunToCursor)

let g:WhichKeyDesc_debug_step_over = "<leader>dO Step Over"
nmap <leader>dO <Action>(StepOver)

let g:WhichKeyDesc_debug_pause = "<leader>dP Pause"
nmap <leader>dP <Action>(Pause)

let g:WhichKeyDesc_debug_choose_run_configuration = "<leader>da Run with Args"
nmap <leader>da <Action>(ChooseRunConfiguration)

let g:WhichKeyDesc_debug_toggle_line_breakpoint = "<leader>db Toggle Breakpoint"
nmap <leader>db <Action>(ToggleLineBreakpoint)

let g:WhichKeyDesc_debug_resume = "<leader>dc Run/Continue"
nmap <leader>dc <Action>(Resume)

let g:WhichKeyDesc_debug_evaluate_expression = "<leader>de Evaluate Expression"
nmap <leader>de <Action>(EvaluateExpression)
vmap <leader>de <Action>(EvaluateExpression)

let g:WhichKeyDesc_debug_step_into = "<leader>di Step Into"
nmap <leader>di <Action>(StepInto)

let g:WhichKeyDesc_debug_goto_next_error = "<leader>dj Down"
nmap <leader>dj <Action>(GotoNextError)

let g:WhichKeyDesc_debug_goto_previous_error = "<leader>dk Up"
nmap <leader>dk <Action>(GotoPreviousError)

let g:WhichKeyDesc_debug_run = "<leader>dl Run Last"
nmap <leader>dl <Action>(Debug)

" Breakpoint Keymaps (<leader>dm)
let g:WhichKeyDesc_debug_breakpoints = "<leader>dm +breakpoints"

let g:WhichKeyDesc_debug_breakpoints_remove_all_breakpoints = "<leader>dma Remove All Breakpoints"
nmap <leader>dma <Action>(Debugger.RemoveAllBreakpoints)

let g:WhichKeyDesc_debug_breakpoints_remove_all_breakpoints_in_file = "<leader>dmi Remove All Breakpoints In File"
nmap <leader>dmi <Action>(Debugger.RemoveAllBreakpointsInFile)

let g:WhichKeyDesc_debug_mute_breakpoints = "<leader>dmm Mute All Breakpoints"
nmap <leader>dmm <Action>(XDebugger.MuteBreakpoints)

let g:WhichKeyDesc_debug_step_out = "<leader>do Step Out"
nmap <leader>do <Action>(StepOut)

" Profiler Keymaps (<leader>dp)
let g:WhichKeyDesc_debug_profiler = "<leader>dp +profiler"

let g:WhichKeyDesc_debug_profiles_activate_profiler_tool_window = "<leader>dpp Profiler Tool Window"
nmap <leader>dpp <Action>(ActivateProfilerToolWindow)

let g:WhichKeyDesc_debug_console = "<leader>dr Toggle REPL"
nmap <leader>dr <Action>(JShell.Console)

let g:WhichKeyDesc_debug_stop = "<leader>dt Terminate"
nmap <leader>dt <Action>(Stop)

let g:WhichKeyDesc_debug_activate_debug_tool_window = "<leader>du Dap UI"
nmap <leader>du <Action>(ActivateDebugToolWindow)
