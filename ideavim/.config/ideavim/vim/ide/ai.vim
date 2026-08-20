" AI Keymaps (<leader>a)
let g:WhichKeyDesc_ai = "<leader>a +ai"

let g:WhichKeyDesc_ai_launch_selected_agent = "<leader>ac Toggle Claude"
nmap <leader>ac <Action>(Terminal.AiAgents.LaunchSelectedAgent)

let g:WhichKeyDesc_ai_chat_send = "<leader>as Send to Claude"
vmap <leader>as <Action>(AIAssistant.Chat.SendActions.Send)
