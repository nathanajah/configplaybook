let g:LanguageClient_serverCommands = {
    \ 'haskell': ['hie', '--lsp'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'typescript.jsx': ['javascript-typescript-stdio'],
    \ }

autocmd Filetype haskell,typescript,typescript.jsx nnoremap <buffer> <silent> K :call LanguageClient_textDocument_hover()<CR>
autocmd Filetype haskell,typescript,typescript.jsx nnoremap <buffer> <silent> gd :call LanguageClient_textDocument_definition()<CR>
autocmd Filetype haskell,typescript,typescript.jsx nnoremap <buffer> <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

let g:LanguageClient_autoStart = 1
