let g:WhichKeyDesc_debug = "<leader>d Debug"

let g:WhichKeyDesc_debug_step_back = "<leader>db Step Back"
nmap <leader>db <Action>(Debugger.PopFrame)

let g:WhichKeyDesc_debug_run_to_cursor = "<leader>dC Run To Cursor"
nmap <leader>dC <Action>(ForceRunToCursor)

let g:WhichKeyDesc_debug_resume = "<leader>dc Continue"
nmap <leader>dc <Action>(Resume)

let g:WhichKeyDesc_debug_interrupt_thread = "<leader>dd Disconnect"
nmap <leader>dd <Action>(Stop)

let g:WhichKeyDesc_debug_evaluate_expression = "<leader>de Evaluate Expression"
nmap <leader>de <Action>(EvaluateExpression)
vmap <leader>de <Action>(EvaluateExpression)

let g:WhichKeyDesc_debug_step_into = "<leader>di Step Into"
nmap <leader>di <Action>(StepInto)

let g:WhichKeyDesc_debug_mute_all_breakpoints = "<leader>dm Mute All Breakpoints"
nmap <leader>dm <Action>(XDebugger.MuteBreakpoints)

let g:WhichKeyDesc_debug_step_over = "<leader>do Step Over"
nmap <leader>do <Action>(StepOver)

let g:WhichKeyDesc_debug_pause = "<leader>dp Pause"
nmap <leader>dp <Action>(Pause)

let g:WhichKeyDesc_debug_stop = "<leader>dq Stop"
nmap <leader>dq <Action>(Stop)

let g:WhichKeyDesc_debug_remove_all_breakpoints = "<leader>dR Remove All Breakpoints"
nmap <leader>dR <Action>(Debugger.RemoveAllBreakpoints)

let g:WhichKeyDesc_debug_remove_all_breakpoints_in_file = "<leader>dr Remove All Breakpoints In File"
nmap <leader>dr <Action>(Debugger.RemoveAllBreakpointsInFile)

let g:WhichKeyDesc_debug_run = "<leader>ds Start"
nmap <leader>ds <Action>(Debug)

let g:WhichKeyDesc_debug_toggle_line_breakpoint = "<leader>dt Toggle Breakpoint"
nmap <leader>dt <Action>(ToggleLineBreakpoint)

let g:WhichKeyDesc_debug_step_out = "<leader>du Step Out"
nmap <leader>du <Action>(StepOut)
