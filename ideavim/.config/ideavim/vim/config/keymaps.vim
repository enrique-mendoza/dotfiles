" ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
" █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
" ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║     ███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝

" ========================================
" Neovim Default Mappings
" ========================================
" https://neovim.io/doc/user/vim_diff.html#_default-mappings

nnoremap Y y$
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
" Q isn't exactly the same.
nnoremap Q @@

" Keep selection active after indenting in visual mode
vnoremap < <gv
vnoremap > >gv

nnoremap <s-h> ^
nnoremap <s-l> g_
vnoremap <s-h> ^
vnoremap <s-l> g_

" Move a chunk of text and it will automatically indent.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Duplicate line and comment the first line
nmap ycc yygccp

" Search within visual selection - this is magic
vmap / <esc>/\\%V

" Window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <C-Up> <Action>(IncrementWindowHeight)
nmap <C-Down> <Action>(DecrementWindowHeight)
nmap <C-Left> <Action>(DecrementWindowWidth)
nmap <C-Right> <Action>(IncrementWindowWidth)

nmap gco o<c-o>gcc
nmap gcO O<c-o>gcc

nmap <C-=> <Action>(HideActiveWindow)

nnoremap _ :NERDTree<cr>

" Dial
nnoremap <C-a> :DialIncrement<cr>
nnoremap <C-x> :DialDecrement<cr>

" Flash
nmap s <Action>(flash.search)
xmap s <Action>(flash.search)
nmap f <Action>(flash.find)
xmap f <Action>(flash.find)
nmap F <Action>(flash.find_backward)
xmap F <Action>(flash.find_backward)
nmap t <Action>(flash.till)
xmap t <Action>(flash.till)
nmap T <Action>(flash.till_backward)
xmap T <Action>(flash.till_backward)
nmap ; <Action>(flash.repeat)
xmap ; <Action>(flash.repeat)
nmap , <Action>(flash.repeat_backward)
xmap , <Action>(flash.repeat_backward)
nmap S <Action>(flash.treesitter)
xmap S <Action>(flash.treesitter)
omap r <Action>(flash.remote)

" Multicursors
" Remap multiple-cursors shortcuts to match terryma/vim-multiple-cursors
nmap <C-n> <Plug>NextWholeOccurrence
xmap <C-n> <Plug>NextWholeOccurrence
nmap g<C-n> <Plug>NextOccurrence
xmap g<C-n> <Plug>NextOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence

" Note that the default <A-n> and g<A-n> shortcuts don't work on Mac due to dead keys.
" <A-n> is used to enter accented text e.g. ñ
nmap gw<C-n> <Plug>AllWholeOccurrences
xmap gw<C-n> <Plug>AllWholeOccurrences
nmap ga<C-n> <Plug>AllOccurrences
xmap ga<C-n> <Plug>AllOccurrences
