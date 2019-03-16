let g:nathanajah_langserver_commands = {
  \ 'haskell': {
  \   'hie': ['hie', '--lsp'],
  \ },
  \ 'typescript': {
  \   'jtl': ['javascript-typescript-stdio'],
  \ },
  \ 'typescript.jsx': {
  \   'jtl': ['javascript-typescript-stdio'],
  \ },
  \ 'c': {
  \   'cquery': ['cquery', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"' . $HOME . '/.cache/cquery"}'],
  \ },
  \ 'cpp': {
  \   'cquery': ['cquery', '--log-file=/tmp/cq.log', '--init={"cacheDirectory":"' . $HOME . '/.cache/cquery"}'],
  \ },
  \ 'css': {
  \   'css-ls': ['css-languageserver', '--stdio'],
  \ },
  \ 'html': {
  \   'html-ls': ['html-languageserver', '--stdio'],
  \ },
  \ 'ocaml': {
  \   'ocaml-ls': ['ocaml-language-server', '--stdio'],
  \ },
  \ 'reason': {
  \   'ocaml-ls': ['ocaml-language-server', '--stdio'],
  \ },
  \ 'python': {
  \   'pyls': ['pyls'],
  \ },
  \ }

function Nathanajah_langclient_setup(lang, client)
  if !exists('g:LanguageClient_serverCommands')
    let g:LanguageClient_serverCommands = {}
  endif
  let g:LanguageClient_serverCommands[a:lang] = g:nathanajah_langserver_commands[a:lang][a:client]
  execute 'autocmd Filetype ' . a:lang . ' nnoremap <buffer> <silent> K :call LanguageClient_textDocument_hover()<CR>'
  execute 'autocmd Filetype ' . a:lang . ' nnoremap <buffer> <silent> gd :call LanguageClient_textDocument_definition()<CR>'
  execute 'autocmd Filetype ' . a:lang . ' nnoremap <buffer> <silent> <F2> :call LanguageClient_textDocument_rename()<CR>'
  execute 'autocmd Filetype ' . a:lang . ' nnoremap <buffer> <silent> <F3> :call LanguageClient_contextMenu()<CR>'
endfunction
