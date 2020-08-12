" =============================================================================
" Filename: autoload/lightline/colorscheme/wal.vim
" Author: Dylan Araps
" License: MIT License
" Last Change: 2017/10/28 12:21:04.
" =============================================================================

if (! exists('g:wal_colors'))
  let s:fn = expand('$HOME/.cache/wal/colors')
  if ! filereadable(s:fn)
    echoe "[" . s:fn . "] not readable"
    finish
  endif
  let g:wal_colors = readfile(s:fn)
endif

let s:black = [ g:wal_colors[8], 232 ]
let s:gray = [ g:wal_colors[0], 0 ]
let s:white = [ g:wal_colors[7], 7 ]
let s:darkblue = [ g:wal_colors[4], 4 ]
let s:cyan = [ g:wal_colors[6], 6 ]
let s:green = [ g:wal_colors[2], 2 ]
let s:orange = [ g:wal_colors[5], 5 ]
let s:purple = [ g:wal_colors[1], 1 ]
let s:red = [ g:wal_colors[1], 1 ]
let s:yellow = [ g:wal_colors[3], 3 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:purple ], [ s:cyan, s:gray ] ]
let s:p.normal.right = [ [ s:black, s:purple ], [ s:black, s:darkblue ] ]
let s:p.inactive.right = [ [ s:black, s:gray ], [ s:white, s:black ] ]
let s:p.inactive.left =  [ [ s:cyan, s:black ], [ s:white, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:cyan, s:gray ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:cyan, s:gray ] ]
let s:p.visual.left = [ [ s:black, s:orange ], [ s:cyan, s:gray ] ]
let s:p.normal.middle = [ [ s:white, s:gray ] ]
let s:p.inactive.middle = [ [ s:white, s:gray ] ]
let s:p.tabline.left = [ [ s:darkblue, s:gray ] ]
let s:p.tabline.tabsel = [ [ s:cyan, s:black ] ]
let s:p.tabline.middle = [ [ s:darkblue, s:gray ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]

let g:lightline#colorscheme#wal#palette = lightline#colorscheme#flatten(s:p)
