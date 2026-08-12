" LazyVim Default Settings
let mapleader=" "
let maplocalleader="\\"

" Variables for custom keymaps based on the current IDE flavor (:echo &ide).
" https://github.com/JetBrains/ideavim/discussions/375
let is_ide_intellij_idea = &ide =~? 'intellij idea'

set autoindent
set backspace=indent,eol,start
set clipboard+=unnamedplus
set formatoptions=jcroqlnt
set hlsearch
set ignorecase
set inccommand=nosplit
set incsearch
set listchars=tab:>\ ,trail:-,nbsp:+
set nocursorcolumn
set nocursorline
set noerrorbells
set notimeout
set nowrap
set number
set relativenumber
set scrolloff=4
set shiftround
set shortmess=filnxtToOF
set sidescrolloff=8
set smartcase
set smartindent
set undolevels=10000
set visualbell
