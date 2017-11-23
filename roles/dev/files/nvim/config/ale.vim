let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'python': ['flake8'],
  \ 'haskell': ['ghc-mod', 'hlint'],
  \ 'ansible': ['ansible_lint'],
  \ 'cpp': ['gcc', 'clangtidy'],
  \ }

let g:ale_cpp_gcc_options = '-std=c++14 -Wall'
let g:ale_cpp_clangtidy_options = '-std=c++14'
