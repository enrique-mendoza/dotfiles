" LSP Keymaps (gd, gr, gI, etc.)
let g:WhichKeyDesc_goto_type_declaration = "gD Goto Type Declaration"
nmap gD <Action>(GotoTypeDeclaration)

let g:WhichKeyDesc_goto_implementation = "gI Goto Implementation"
nmap gI <Action>(GotoImplementation)

let g:WhichKeyDesc_parameter_info = "gK Signature Help"
nmap gK <Action>(ParameterInfo)

let g:WhichKeyDesc_goto_declaration = "gd Goto Declaration"
nmap gd <Action>(GotoDeclaration)

let g:WhichKeyDesc_show_usages = "gr References"
nmap gr <Action>(ShowUsages)

let g:WhichKeyDesc_quick_type_definition = "gy Goto Type Definition"
nmap gy <Action>(QuickTypeDefinition)

let g:WhichKeyDesc_parameter_info_alt = "<C-k> Signature Help"
imap <C-k> <C-o><Action>(ParameterInfo)
