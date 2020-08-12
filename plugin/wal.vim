let g:wal_colors = []

function! WalSetRgbColors() abort
  let s:fn = expand('$HOME/.cache/wal/colors')
  if ! filereadable(s:fn)
    echoe "[" . s:fn . "] not readable"
    finish
  endif
  let g:wal_colors = readfile(s:fn)
endfunction
