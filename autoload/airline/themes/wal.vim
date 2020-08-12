if (! exists('g:wal_colors'))
  let s:fn = expand('$HOME/.cache/wal/colors')
  if ! filereadable(s:fn)
    echoe "[" . s:fn . "] not readable"
    finish
  endif
  let g:wal_colors = readfile(s:fn)
endif

" wal Airline
let g:airline#themes#wal#palette = {}

" Normal mode
let s:N  = [ '', g:wal_colors[4], 232, 4, 'BOLD' ]
let s:N2 = [ g:wal_colors[4], g:wal_colors[0], 4, 0, 'BOLD' ]

" Insert mode
let s:I  = [ '', g:wal_colors[2], 232, 2, 'BOLD' ]
let s:I2 = [ g:wal_colors[2], g:wal_colors[0], 2, 0, 'BOLD' ]

" Visual mode
let s:V  = [ '', g:wal_colors[1], 232, 1, 'BOLD' ]
let s:V2 = [ g:wal_colors[1], g:wal_colors[0], 1, 0, 'BOLD' ]

" Replace mode
let s:R  = [ '', g:wal_colors[5], 232, 5, 'BOLD' ]
let s:R2 = [ g:wal_colors[5], g:wal_colors[0], 5, 0, 'BOLD' ]

let g:airline#themes#wal#palette.normal  = airline#themes#generate_color_map(s:N, s:N2, s:N2)
let g:airline#themes#wal#palette.insert  = airline#themes#generate_color_map(s:I, s:I2, s:I2)
let g:airline#themes#wal#palette.visual  = airline#themes#generate_color_map(s:V, s:V2, s:V2)
let g:airline#themes#wal#palette.replace = airline#themes#generate_color_map(s:R, s:R2, s:R2)

let g:airline#themes#wal#palette.accents = { 'red': [ g:wal_colors[0], g:wal_colors[2], 0, 2, 'BOLD' ] }

" Inactive mode
let s:IN1 = [ g:wal_colors[0], g:wal_colors[8], 0, 8 ]
let s:IN2 = [ g:wal_colors[0], g:wal_colors[0], 0, 0 ]

let s:IA = [ s:IN1[1], s:IN2[1], s:IN1[3], s:IN2[3], '' ]
let g:airline#themes#wal#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warnings
let s:WI = [ '', g:wal_colors[1], 232, 1, 'BOLD' ]
let g:airline#themes#wal#palette.normal.airline_warning  = s:WI
let g:airline#themes#wal#palette.insert.airline_warning  = s:WI
let g:airline#themes#wal#palette.visual.airline_warning  = s:WI
let g:airline#themes#wal#palette.replace.airline_warning = s:WI

let g:airline#themes#wal#palette.normal.airline_error  = s:WI
let g:airline#themes#wal#palette.insert.airline_error  = s:WI
let g:airline#themes#wal#palette.visual.airline_error  = s:WI
let g:airline#themes#wal#palette.replace.airline_error = s:WI

" Tabline
let g:airline#themes#wal#palette.tabline = {
      \ 'airline_tab':     [ g:wal_colors[4], g:wal_colors[0], 4, 0, 'BOLD' ],
      \ 'airline_tabsel':  [ '', g:wal_colors[4], 232, 4, 'BOLD' ],
      \ 'airline_tabtype': [ '', g:wal_colors[4], 232, 4, 'BOLD' ],
      \ 'airline_tabfill': [ g:wal_colors[4], g:wal_colors[0], 4, 0, 'BOLD' ],
      \ 'airline_tabmod':  [ '', g:wal_colors[4], 232, 4, 'BOLD' ]
\ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#wal#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ g:wal_colors[0], g:wal_colors[0], 0, 0, 'BOLD' ],
      \ [ g:wal_colors[0], g:wal_colors[0], 0, 0, 'BOLD' ],
      \ [ g:wal_colors[0], g:wal_colors[0], 0, 0, 'BOLD' ] )
