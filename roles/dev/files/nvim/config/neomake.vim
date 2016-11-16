let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_python_enabled_makers = ['flake8']

let g:neomake_cpp_enabled_makers = ['gcc', 'clangtidy']
let g:neomake_cpp_gcc_maker = {
            \ 'exe': 'g++',
            \ 'args': ['-O2', '-std=c++11', '-o', '%:p:r.o'],
            \ }

let g:neomake_cpp_clangtidy_maker = {
            \ 'exe': 'clang-tidy',
            \ 'args': ['%:p', '-checks=*', '--', '-std=c++11'],
            \ 'errorformat':
            \ '%E%f:%l:%c: fatal error: %m,' .
            \ '%E%f:%l:%c: error: %m,' .
            \ '%W%f:%l:%c: warning: %m,' .
            \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
            \ '%E%m',
            \ 'append_file': 0,
            \ }

let g:neomake_java_enabled_makers = ['javac']

autocmd! BufWritePost * Neomake
