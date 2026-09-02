" Neovim Standard Mappings
nnoremap Y y$
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" Keep cursor centered on half-page scroll.
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Q isn't exactly the same.
nnoremap Q @@

" Keep selection active after indenting in visual mode.
vnoremap < <gv
vnoremap > >gv

nnoremap <S-h> ^
nnoremap <S-l> g_
vnoremap <S-h> ^
vnoremap <S-l> g_

" Move a chunk of text and it will automatically indent.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines without moving cursor off its spot.
nnoremap J mzJ`z

" Keep cursor centered when jumping between search matches.
nnoremap n nzzzv
nnoremap N Nzzzv

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
