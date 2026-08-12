" Only load these IntelliJ IDEA-specific mappings when running inside
" IntelliJ IDEA itself (see is_ide_intellij_idea in options.vim).
if is_ide_intellij_idea |
  " IntelliJ IDEA Keymaps (<leader>i)
  let g:WhichKeyDesc_intellij_idea = "<leader>i +intellij idea"

  let g:WhichKeyDesc_intellij_idea_choose_run_configuration = "<leader>ic Run Configuration"
  nmap <Leader>ic <Action>(ChooseRunConfiguration)

  let g:WhichKeyDesc_intellij_idea_show_project_structure_settings = "<leader>ip Project Structure Settings"
  nmap <leader>ip <Action>(ShowProjectStructureSettings)

  let g:WhichKeyDesc_intellij_idea_show_settings = "<leader>is Settings"
  nmap <leader>is <Action>(ShowSettings)

  " Java Keymaps (<leader>j)
  let g:WhichKeyDesc_java = "<leader>j +java"

  let g:WhichKeyDesc_java_generate = "<leader>jG Generate"
  nmap <leader>jG <Action>(Generate)

  let g:WhichKeyDesc_java_generate_getter_and_setter = "<leader>ja Generate Getters And Setters"
  nmap <leader>ja <Action>(GenerateGetterAndSetter)

  let g:WhichKeyDesc_java_generate_constructor = "<leader>jc Generate Constructor"
  nmap <leader>jc <Action>(GenerateConstructor)

  let g:WhichKeyDesc_java_quick_java_doc = "<leader>jd Quick Javadoc"
  nmap <leader>jd <Action>(QuickJavaDoc)

  let g:WhichKeyDesc_java_generate_getter = "<leader>jg Generate Getters"
  nmap <leader>jg <Action>(GenerateGetter)

  let g:WhichKeyDesc_java_implement_methods = "<leader>ji Implement Methods"
  nmap <leader>ji <Action>(ImplementMethods)

  " Maven Keymaps (<leader>jm)
  let g:WhichKeyDesc_java_maven = "<leader>jm +maven"

  let g:WhichKeyDesc_java_maven_download_all_sources = "<leader>jmd Maven Download All Sources"
  nmap <leader>jmd <Action>(Maven.DownloadAllSources)

  let g:WhichKeyDesc_java_maven_sync_incrementally = "<leader>jms Maven Sync Incrementally"
  nmap <leader>jms <Action>(Maven.SyncIncrementally)

  let g:WhichKeyDesc_java_override_methods = "<leader>jo Override Methods"
  nmap <leader>jo <Action>(OverrideMethods)

  let g:WhichKeyDesc_java_generate_setter = "<leader>js Generate Setters"
  nmap <leader>js <Action>(GenerateSetter)
| endif
