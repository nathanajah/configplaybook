let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'typescript.jsx': ['javascript-typescript-stdio'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

let g:LanguageClient_autoStart = 1
