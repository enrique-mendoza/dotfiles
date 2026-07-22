" ██╗███╗   ██╗██╗████████╗
" ██║████╗  ██║██║╚══██╔══╝
" ██║██╔██╗ ██║██║   ██║
" ██║██║╚██╗██║██║   ██║
" ██║██║ ╚████║██║   ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝

" Variables for custom keymaps based on the current IDE flavor (:echo &ide).
" https://github.com/JetBrains/ideavim/discussions/375
let is_ide_intellij_idea = &ide =~? 'intellij idea'

source ~/.config/ideavim/vim/config/launch.vim
source ~/.config/ideavim/vim/plugins/argtextobj.vim
source ~/.config/ideavim/vim/plugins/highlightedyank.vim
source ~/.config/ideavim/vim/plugins/dial.vim
source ~/.config/ideavim/vim/plugins/nerdtree.vim
source ~/.config/ideavim/vim/plugins/which-key.vim
source ~/.config/ideavim/vim/config/options.vim
source ~/.config/ideavim/vim/config/keymaps.vim
