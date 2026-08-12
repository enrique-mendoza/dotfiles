" General Keymaps
let g:WhichKeyDesc_activate_debug_tool_window = "<C-/> Terminal (Root Dir)"
nmap <C-/> <Action>(ActivateDebugToolWindow)

let g:WhichKeyDesc_hide_active_window = "<C-=> Close Active Window"
nmap <C-=> <Action>(HideActiveWindow)

let g:WhichKeyDesc_split_horizontally = "<leader>- Split Horizontally"
nmap <leader>- <c-w>s

let g:WhichKeyDesc_welcome_screen_plugins = "<leader>p Plugins"
nmap <leader>p <Action>(WelcomeScreen.Plugins)

let g:WhichKeyDesc_reload_idea_vim = "<leader>r Reload IdeaVim"
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)

let g:WhichKeyDesc_split_vertically = "<leader>| Split Vertically"
nmap <leader><bar> <c-w>v
