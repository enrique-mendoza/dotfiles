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

" Escape and Clear hlsearch
nmap <esc> :nohlsearch<CR>

" Add Comment Below
nmap gco o<c-o>gcc
" Add Comment Above
nmap gcO O<c-o>gcc

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
nmap <leader>h <Action>(SplitHorizontally)
nmap <leader>v <Action>(SplitVertically)
nmap <Leader>r <Action>(IdeaVim.ReloadVimRc.reload)

" Buffers ---------------------
nmap <leader>bA <Action>(CloseAllEditors)
nmap <leader>ba <Action>(CloseAllEditorsButActive)
nmap <leader>bc <Action>(CloseEditor)
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
nmap <leader>fk <Action>(GotoUrlAction)
nmap <leader>fo <Action>(FindInPath)
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
nmap <leader>iA <Action>(Maven.DownloadAllSources)
nmap <leader>iR <Action>(Maven.SyncIncrementally)
nmap <leader>ib <Action>(ActivateDatabaseToolWindow)
nmap <Leader>ic <Action>(ChooseRunConfiguration)
nmap <leader>id <Action>(ActivateDebugToolWindow)
nmap <leader>ip <Action>(ShowProjectStructureSettings)
nmap <leader>ir <Action>(Run)
nmap <leader>is <Action>(ShowSettings)
nmap <Leader>iu <Action>(ActivateUnitTestsToolWindow)
nmap <leader>ix <Action>(Stop)
nmap <Leader>iw <Action>(NavBarToolBar)
nmap <leader>iz <Action>(ActivateRunToolWindow)

" Java ---------------------
nmap <leader>ja <Action>(Generate)
nmap <leader>jc <Action>(GenerateConstructor)
nmap <leader>jd <Action>(QuickJavaDoc)
nmap <leader>jg <Action>(GenerateGetter)
nmap <leader>ji <Action>(ImplementMethods)
nmap <leader>jm <Action>(GenerateGetterAndSetter)
nmap <leader>jo <Action>(OverrideMethods)
nmap <leader>js <Action>(GenerateSetter)

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

" Flash ---------------------
nmap <leader>s <Action>(flash.search)

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
