" See: https://github.com/tpope/vim-commentary/blob/master/doc/commentary.txt
let g:WhichKeyDesc_comment = "gc Toggle Comment"
let g:WhichKeyDesc_comment_line = "gcc Toggle Comment Line"
let g:WhichKeyDesc_comment_below = "gco Add Comment Below"
nmap gco o<c-o>gcc

let g:WhichKeyDesc_comment_above = "gcO Add Comment Above"
nmap gcO O<c-o>gcc

" Duplicate line and comment the first line.
nmap ycc yygccp
