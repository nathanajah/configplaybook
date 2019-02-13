function! FZFWatchman()
  if file_readable('.watchmanconfig')
    let opts = copy(get(g:, 'fzf_layout', { 'down': '~20%' }))
    call fzf#run(extend(opts, fzf#wrap({
    \ 'source': 'watchmanls',
    \ 'options': '-m --prompt "watchman> "'
    \ })))
  else
    Files
  endif
endfunction

command! FZFWatchman call FZFWatchman()

function! FZFWatchmanReset()
  silent !watchmanlsreset
endfunction

command! FZFWatchmanReset call FZFWatchmanReset()

nmap <C-p> :FZFWatchman<CR>
nmap <C-f> :FZFWatchmanReset<CR>
