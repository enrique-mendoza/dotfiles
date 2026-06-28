" ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
" █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
" ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║     ███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝

" Variables for custom keymaps based on the current IDE flavor (:echo &ide).
" https://github.com/JetBrains/ideavim/discussions/375
let is_ide_intellij_idea = &ide =~? 'intellij idea'

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

" Duplicate line and comment the first line
nmap ycc yygccp

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

"   ██╗██████╗ ███████╗ █████╗      █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
"   ██║██╔══██╗██╔════╝██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
"   ██║██║  ██║█████╗  ███████║    ███████║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
"   ██║██║  ██║██╔══╝  ██╔══██║    ██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
"   ██║██████╔╝███████╗██║  ██║    ██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
"   ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

" General ---------------------
nmap <C-/> <Action>(ActivateDebugToolWindow)
nmap <C-=> <Action>(HideActiveWindow)

imap <C-k> <C-o><Action>(ParameterInfo)

nmap [[ <Action>(GotoPrevElementUnderCaretUsage)
nmap ]] <Action>(GotoNextElementUnderCaretUsage)

nmap [b <Action>(PreviousTab)
nmap ]b <Action>(NextTab)

nmap [e <Action>(GotoPreviousError)
nmap ]e <Action>(GotoNextError)

nmap [t ?\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<cr>
nmap ]t /\(TODO\|FIX\|HACK\|WARN\|PERF\|NOTE\|TEST\):<cr>

nmap [q <Action>(GotoPreviousError)
nmap ]q <Action>(GotoNextError)

nmap gco o<c-o>gcc
nmap gcO O<c-o>gcc

nmap gD <Action>(GotoTypeDeclaration)
nmap gd <Action>(GotoDeclaration)
nmap gI <Action>(GotoImplementation)
nmap gK <Action>(ParameterInfo)
nmap gr <Action>(ShowUsages)
nmap gy <Action>(QuickTypeDefinition)

nmap <leader><bar> <c-w>v
nmap <leader>- <c-w>s

nmap <leader>p <Action>(WelcomeScreen.Plugins)
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)

nmap <leader>H <Action>(ToggleBookmark)
nmap <leader>h <Action>(ShowBookmarks)

" Tabs ---------------------
nmap <leader><tab>[ <Action>(PreviousTab)
nmap <leader><tab>] <Action>(NextTab)
nmap <leader><tab>d <Action>(CloseActiveTab)
nmap <leader><tab>o <Action>(CloseAllEditorsButActive)

" Code ------------------------
nmap <leader>cA <Action>(ShowIntentionActions)
nmap <leader>ca <Action>(RefactoringMenu)
vmap <leader>ca <Action>(RefactoringMenu)
nmap <leader>cf <Action>(ReformatCode)
nmap <leader>co <Action>(OptimizeImports)
nmap <leader>cR <Action>(RenameFile)
nmap <leader>cr <Action>(RenameElement)

" Buffers ---------------------
nmap <leader>bd <Action>(CloseEditor)
nmap <leader>bh <Action>(MoveTabLeft)
nmap <leader>bj <Action>(MoveTabDown)
nmap <leader>bk <Action>(MoveTabUp)
nmap <leader>bl <Action>(MoveTabRight)
nmap <leader>br <Action>(ReopenClosedTab)
nmap <leader>bt <Action>(MoveEditorToOppositeTabGroup)
nmap <leader>bu <action>(Unsplit)
nmap <leader>by <Action>(ChangeSplitOrientation)

" Debug ---------------------
nmap <leader>db <Action>(Debugger.PopFrame)
nmap <leader>dC <Action>(ForceRunToCursor)
nmap <leader>dc <Action>(Resume)
nmap <leader>dd <Action>(Stop)
nmap <leader>de <Action>(EvaluateExpression)
vmap <leader>de <Action>(EvaluateExpression)
nmap <leader>di <Action>(StepInto)
nmap <leader>dm <Action>(XDebugger.MuteBreakpoints)
nmap <leader>do <Action>(StepOver)
nmap <leader>dp <Action>(Pause)
nmap <leader>dq <Action>(Stop)
nmap <leader>dR <Action>(Debugger.RemoveAllBreakpoints)
nmap <leader>dr <Action>(Debugger.RemoveAllBreakpointsInFile)
nmap <leader>ds <Action>(Debug)
nmap <leader>dt <Action>(ToggleLineBreakpoint)
nmap <leader>du <Action>(StepOut)

" Find ---------------------
nmap <leader>fe <Action>(SearchEverywhere)
nmap <leader>ff <Action>(GotoFile)
nmap <leader>fn <Action>(NewElementSamePlace)
nmap <leader>fp <Action>(OpenFile)
nmap <leader>fr <Action>(Switcher)

" Git ---------------------
nmap <leader>gB <Action>(EditorGutterVcsPopupMenu)
nmap <leader>gb <Action>(Git.Branches)
nmap <leader>gD <Action>(Vcs.ShowDiffChangedLines)
nmap <leader>gd <Action>(Compare.SameVersion)
nmap <leader>gf <Action>(Vcs.ShowTabbedFileHistory)
nmap <leader>gL <Action>(Vcs.ShowHistoryForBlock)
vmap <leader>gL <Action>(Vcs.ShowHistoryForBlock)
nmap <leader>gl <Action>(Vcs.Show.Log)
nmap <leader>gs <Action>(Git.Stash)
nmap <leader>gu <Action>(Git.Unstash)

" Git Hunks ---------------------
nmap <leader>gh[ <Action>(VcsShowPrevChangeMarker)
nmap <leader>gh] <Action>(VcsShowNextChangeMarker)
nmap <leader>ghp <Action>(VcsShowCurrentChangeMarker)
nmap <leader>ghr <Action>(Vcs.RollbackChangedLines)

if is_ide_intellij_idea |
  " IntelliJ IDEA ---------------------
  nmap <Leader>ic <Action>(ChooseRunConfiguration)
  nmap <leader>ip <Action>(ShowProjectStructureSettings)
  nmap <leader>is <Action>(ShowSettings)

  " Java ---------------------
  nmap <leader>ja <Action>(GenerateGetterAndSetter)
  nmap <leader>jc <Action>(GenerateConstructor)
  nmap <leader>jd <Action>(QuickJavaDoc)
  nmap <leader>jG <Action>(Generate)
  nmap <leader>jg <Action>(GenerateGetter)
  nmap <leader>ji <Action>(ImplementMethods)
  nmap <leader>jo <Action>(OverrideMethods)
  nmap <leader>js <Action>(GenerateSetter)

  " Maven ---------------------
  nmap <leader>jmd <Action>(Maven.DownloadAllSources)
  nmap <leader>jms <Action>(Maven.SyncIncrementally)
| endif

" Search ---------------------
nmap <leader>s" :registers<cr>
nmap <leader>sC <Action>(GotoAction)
nmap <leader>sc :history<cr>
nmap <leader>sd <Action>(ActivateProblemsViewToolWindow)
nmap <leader>se <Action>(GotoUrlAction)
nmap <leader>sg <Action>(FindInPath)
nmap <leader>sH <Action>(HighlightUsagesInFile)
nmap <leader>sj <Action>(RecentLocations)
nmap <leader>sk :map<cr>
nmap <leader>sm :marks<cr>
nmap <leader>ss <Action>(GotoSymbol)
nmap <leader>sT <Action>(ActivateTODOToolWindow)
nmap <leader>st <Action>(GotoTest)

" UI ---------------------
nmap <leader>uc <Action>(QuickChangeScheme)
nmap <leader>uf <Action>(ToggleDistractionFreeMode)
nmap <Leader>ur :nohlsearch<CR>
nmap <leader>us <Action>(ViewStatusBar)
nmap <leader>ut <Action>(ViewToolButtons)
nmap <leader>uz <Action>(ToggleZenMode)
