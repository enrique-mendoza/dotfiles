" ██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗ ███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
" █████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
" ██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║     ███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝
                                                            
" Better navigation
vnoremap < <gv
vnoremap > >gv
nnoremap <s-h> ^
nnoremap <s-l> g_
vnoremap <s-h> ^
vnoremap <s-l> g_

" Make U opposite to u
nnoremap U <C-r>

" Keeping the cursor centered.
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" This works weird
" nnoremap n nzzz
" nnoremap N Nzzz 
" nnoremap * *zzz
" nnoremap # #zzz
" nnoremap g* g*zzz
" nnoremap g# g#zzz

" Move a chunk of text and it will automatically indent.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Duplicate line and comment the first line
nmap ycc yygccp 

" Search within visual selection - this is magic
vmap / <esc>/\\%V

" Escape and Clear hlsearch
" nmap <esc> :nohlsearch<CR>

" Add Comment Below
nmap gco o<c-o>gcc
" Add Comment Above
nmap gcO O<c-o>gcc

" Remap multiple-cursors shortcuts to match terryma/vim-multiple-cursors
nmap <C-n> <Plug>NextWholeOccurrence
xmap <C-n> <Plug>NextWholeOccurrence
nmap g<C-n> <Plug>NextOccurrence
xmap g<C-n> <Plug>NextOccurrence
xmap <C-x> <Plug>SkipOccurrence
xmap <C-p> <Plug>RemoveOccurrence

" Note that the default <A-n> and g<A-n> shortcuts don't work on Mac due to dead keys.
" <A-n> is used to enter accented text e.g. ñ
" Feel free to pick your own mappings that are not affected. I like to use <leader>
nmap gw<C-n> <Plug>AllWholeOccurrences
xmap gw<C-n> <Plug>AllWholeOccurrences
nmap ga<C-n> <Plug>AllOccurrences
xmap ga<C-n> <Plug>AllOccurrences

" Go to Left Window
nmap <C-h> <C-w>h
" Go to Lower Window
nmap <C-j> <C-w>j
" Go to Upper Window
nmap <C-k> <C-w>k
" Go to Right Window
nmap <C-l> <C-w>l
" Increase Window Height
nmap <C-Up> <Action>(IncrementWindowHeight)
" Decrease Window Height
nmap <C-Down> <Action>(DecrementWindowHeight)
" Decrease Window Width
nmap <C-Left> <Action>(DecrementWindowWidth)
" Increase Window Width
nmap <C-Right> <Action>(IncrementWindowWidth)
" Move Down
nmap <A-j> <Action>(MoveLineDown)
imap <A-j> <Esc><Action>(MoveLineDown)i
" Move Up
nmap <A-k> <Action>(MoveLineUp)
imap <A-k> <Esc><Action>(MoveLineUp)i
" Prev Buffer
nmap <A-h> <Action>(PreviousTab)
nmap <A-l> <Action>(NextTab)

nmap <C-/> <Action>(ActivateDebugToolWindow)
" nmap <C-=> <Action>(ActivateRunToolWindow)

"   ██╗██████╗ ███████╗ █████╗      █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
"   ██║██╔══██╗██╔════╝██╔══██╗    ██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
"   ██║██║  ██║█████╗  ███████║    ███████║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
"   ██║██║  ██║██╔══╝  ██╔══██║    ██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
"   ██║██████╔╝███████╗██║  ██║    ██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
"   ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

" General ---------------------
nmap <leader>/ <Action>(CommentByLineComment)
vmap <leader>/ <Action>(CommentByLineComment)
nnoremap <leader>e :NERDTree<CR>
nmap <Leader>c :nohlsearch<CR> 
nmap <leader>h <Action>(SplitHorizontally)
nmap <leader>v <Action>(SplitVertically)
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)

" Buffers ---------------------
nmap <leader>bD <Action>(CloseAllEditors)
nmap <leader>bd <Action>(CloseEditor)
nmap <leader>bh <Action>(MoveTabLeft)
nmap <leader>bj <Action>(MoveTabDown)
nmap <leader>bk <Action>(MoveTabUp)
nmap <leader>bl <Action>(MoveTabRight)
nmap <leader>bn <Action>(PrevSplitter)
nmap <leader>bo <Action>(MoveEditorToOppositeTabGroup)
nmap <leader>bp <Action>(NextSplitter)
nmap <leader>br <Action>(ReopenClosedTab)
nmap <leader>bu <action>(Unsplit)
nmap <leader>by <Action>(ChangeSplitOrientation)

" Debug ---------------------
nmap <leader>dd <Action>(Stop)
nmap <leader>dR <Action>(Debugger.RemoveAllBreakpoints)
nmap <leader>de <Action>(EvaluateExpression)
vmap <leader>de <Action>(EvaluateExpression)
nmap <leader>di <Action>(StepInto)
nmap <leader>dm <Action>(XDebugger.MuteBreakpoints)
nmap <leader>do <Action>(StepOver)
nmap <leader>dp <Action>(Pause)
nmap <leader>dr <Action>(Debugger.RemoveAllBreakpointsInFile)
nmap <leader>ds <Action>(Debug)
nmap <leader>dt <Action>(ToggleLineBreakpoint)
nmap <leader>du <Action>(StepOut)

" Find ---------------------
nmap <leader>fa <Action>(GotoAction)
nmap <leader>fc <Action>(GotoClass)
nmap <leader>fe <Action>(SearchEverywhere)
nmap <leader>ff <Action>(GotoFile)
nmap <leader>fh <Action>(GotoUrlAction)
nmap <leader>fP <Action>(FindInPath)
nmap <leader>fp <Action>(OpenFile)
nmap <leader>fr <Action>(Switcher)
nmap <leader>fs <Action>(GotoSymbol)
nmap <leader>ft <Action>(GotoTest)
nmap <leader>fu <Action>(FindUsages)

" Git ---------------------
nmap <leader>gB <Action>(EditorGutterVcsPopupMenu)
nmap <leader>gC <Action>(Git.CompareWithBranch)
nmap <leader>gH <Action>(Vcs.ShowTabbedFileHistory)
nmap <leader>gP <Action>(Vcs.PushUpToCommit)
nmap <leader>gR <Action>(Git.ResolveConflicts)
nmap <leader>gU <Action>(Vcs.RollbackChangedLines)
nmap <leader>ga <Action>(Git.Add)
nmap <leader>gb <Action>(Git.Branches)
nmap <leader>gc <Action>(ActivateCommitToolWindow)
nmap <leader>gd <Action>(GitDeleteBranchAction)
nmap <leader>gf <Action>(Git.Fetch)
nmap <leader>gh <Action>(ActivateVersionControlToolWindow)
nmap <leader>gi <Action>(Git.Init)
nmap <leader>gm <Action>(Git.Merge)
nmap <leader>gn <Action>(Git.CreateNewBranch)
nmap <leader>gp <Action>(Git.Pull)
nmap <leader>gs <Action>(Git.Stash)
nmap <leader>gu <Action>(Git.Unstash)
nmap <leader>gy <Action>(VcsShowCurrentChangeMarker)
nmap <leader>gz <Action>(Git.Reset)

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

" LSP ---------------------
nmap <leader>la <Action>(ShowIntentionActions)
nmap <leader>ld <Action>(QuickTypeDefinition)
nmap <leader>lD <Action>(GotoDeclaration)
nmap <leader>le <Action>(ShowErrorDescription)
nmap <leader>lf <Action>(ReformatCode)
nmap <leader>lh <Action>(HighlightUsagesInFile)
nmap <leader>li <Action>(GotoImplementation)
nmap <leader>lI <Action>(ShowHoverInfo)
nmap <leader>lo <Action>(OptimizeImports)
nmap <leader>lp <Action>(QuickPreview)
nmap <leader>lr <Action>(RenameElement)
nmap <leader>lt <Action>(QuickImplementations)
nmap <leader>lu <Action>(ShowUsages)

" Bookmarks ---------------------
nmap <leader>mn <Action>(GotoNextBookmark)
nmap <leader>mp <Action>(GotoPreviousBookmark)
nmap <leader>ms <Action>(ShowBookmarks)
nmap <leader>mt <Action>(ToggleBookmark)

" Search ---------------------
nmap <leader>sf <Action>(flash.search)

" UI ---------------------
nmap <leader>uc <Action>(QuickChangeScheme)
nmap <leader>us <Action>(ViewStatusBar)
nmap <leader>ut <Action>(ViewToolButtons)
nmap <leader>uf <Action>(ToggleDistractionFreeMode)
nmap <leader>uz <Action>(ToggleZenMode)

" Extract & Introduce: descriptions and maps ---------------------

" nmap <Leader>xa <Action>(Inline)
" nmap <Leader>xc <Action>(ExtractClass)
" nmap <Leader>xf <Action>(IntroduceField)
" nmap <Leader>xi <Action>(ExtractInterface)
" nmap <Leader>xm <Action>(ExtractMethod)
" nmap <Leader>xp <Action>(IntroduceParameter)
" nmap <Leader>xs <Action>(ExtractSuperclass)
" nmap <Leader>xv <Action>(IntroduceVariable)
" nmap <Leader>xx <Action>(IntroduceConstant)
