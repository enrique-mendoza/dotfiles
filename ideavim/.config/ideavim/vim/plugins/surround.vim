" See: https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
let g:surround_no_mappings = 1

let g:WhichKeyDesc_surround = "gs +surround"
nmap gsa <Plug>YSurround

let g:WhichKeyDesc_surround_add = "gsa Add Surrounding"
xmap gsa <Plug>VSurround

let g:WhichKeyDesc_surround_delete = "gsd Delete Surrounding"
nmap gsd <Plug>DSurround

let g:WhichKeyDesc_surround_replace = "gsr Replace Surrounding"
nmap gsr <Plug>CSurround
