let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 'ignorecase'
let g:deoplete#auto_completion_start_length = 0
let g:min_pattern_length = 0

let g:deoplete#sources = {}
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.cpp = ['omni']

inoremap <expr><Tab>  pumvisible() ? "\<C-n>" : "<Tab>"
inoremap <S-Tab> <C-p>
