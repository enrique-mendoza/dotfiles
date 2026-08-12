" See: https://plugins.jetbrains.com/plugin/28237-vim-dial
" Enable some categories (basic, numbers, dates, java) and some specific transformations (python:async, markdown:task_item).
let g:dial_include = "basic,numbers,dates,java,python:async,markdown:task_item"

" Custom transformations.
let g:dial_custom_definitions = [
    ['normalizedCaseWords', ['one', 'two', 'three']],
    ['words', ['un', 'deux', 'trois']],
    ['normalizedCasePattern', ['alpha', 'beta', 'gamma']],
    ['pattern', ['start', 'middle', 'end']]
]

nnoremap <C-a> :DialIncrement<CR>
nnoremap <C-x> :DialDecrement<CR>
