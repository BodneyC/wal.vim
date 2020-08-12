" wal.vim -- Vim color scheme.
" Author:       Dylan Araps
" Webpage:      https://github.com/dylanaraps/wal
" Description:  A colorscheme that uses your terminal colors, made to work with 'wal'.

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

" Colorscheme name
let g:colors_name = 'wal'

" highlight groups {{{

if (! exists('g:wal_colors'))
  let s:fn = expand('$HOME/.cache/wal/colors')
  if ! filereadable(s:fn)
    echoe "[" . s:fn . "] not readable"
    finish
  endif
  let g:wal_colors = readfile(s:fn)
endif

" set t_Co=16
exe 'hi Normal guibg=NONE guifg='.g:wal_colors[7]
exe 'hi NonText guibg=NONE guifg='.g:wal_colors[0]
exe 'hi Comment guibg=NONE guifg='.g:wal_colors[8]
hi Conceal guibg=NONE
exe 'hi Constant guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Error guibg='.g:wal_colors[1].' guifg='.g:wal_colors[7]
exe 'hi Identifier guibg=NONE guifg='.g:wal_colors[1].' gui=BOLD'
exe 'hi Ignore guibg='.g:wal_colors[8].' guifg='.g:wal_colors[0]
exe 'hi PreProc guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Special guibg=NONE guifg='.g:wal_colors[6]
exe 'hi Statement guibg=NONE guifg='.g:wal_colors[1]
exe 'hi String guibg=NONE guifg='.g:wal_colors[2]
exe 'hi Number guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Todo guibg='.g:wal_colors[2].' guifg='.g:wal_colors[0]
exe 'hi Type guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Underlined guibg=NONE guifg='.g:wal_colors[1].' gui=underline'
exe 'hi StatusLine guibg='.g:wal_colors[7].' guifg='.g:wal_colors[0]
exe 'hi StatusLineNC guibg='.g:wal_colors[8].' guifg='.g:wal_colors[0]
exe 'hi TabLine guibg=NONE guifg='.g:wal_colors[8]
exe 'hi TabLineFill guibg=NONE guifg='.g:wal_colors[8]
exe 'hi TabLineSel guibg='.g:wal_colors[4].' guifg='.g:wal_colors[0]
exe 'hi TermCursorNC guibg='.g:wal_colors[3].' guifg='.g:wal_colors[0]
exe 'hi VertSplit guibg='.g:wal_colors[8].' guifg='.g:wal_colors[0]
exe 'hi Title guibg=NONE guifg='.g:wal_colors[4]
exe 'hi CursorLine guibg='.g:wal_colors[2].' guifg='.g:wal_colors[0]
exe 'hi LineNr guibg=NONE guifg='.g:wal_colors[8]
exe 'hi CursorLineNr guibg=NONE guifg='.g:wal_colors[8]
exe 'hi helpLeadBlank guibg=NONE guifg='.g:wal_colors[7]
exe 'hi helpNormal guibg=NONE guifg='.g:wal_colors[7]
exe 'hi Visual guibg='.g:wal_colors[0].' guifg='.g:wal_colors[15].' gui=reverse term=reverse'
exe 'hi VisualNOS guibg=NONE guifg='.g:wal_colors[1]
exe 'hi Pmenu guibg='.g:wal_colors[8].' guifg='.g:wal_colors[7]
exe 'hi PmenuSbar guibg='.g:wal_colors[6].' guifg='.g:wal_colors[7]
exe 'hi PmenuSel guibg='.g:wal_colors[4].' guifg='.g:wal_colors[0]
exe 'hi PmenuThumb guibg='.g:wal_colors[8].' guifg='.g:wal_colors[8]
exe 'hi FoldColumn guibg=NONE guifg='.g:wal_colors[7]
exe 'hi Folded guibg=NONE guifg='.g:wal_colors[8]
exe 'hi WildMenu guibg='.g:wal_colors[2].' guifg='.g:wal_colors[0]
exe 'hi SpecialKey guibg=NONE guifg='.g:wal_colors[8]
exe 'hi DiffAdd guibg=NONE guifg='.g:wal_colors[2]
exe 'hi DiffChange guibg=NONE guifg='.g:wal_colors[8]
exe 'hi DiffDelete guibg=NONE guifg='.g:wal_colors[1]
exe 'hi DiffText guibg=NONE guifg='.g:wal_colors[4]
exe 'hi IncSearch guibg='.g:wal_colors[3].' guifg='.g:wal_colors[0]
exe 'hi Search guibg='.g:wal_colors[3].' guifg='.g:wal_colors[0]
exe 'hi Directory guibg=NONE guifg='.g:wal_colors[4]
exe 'hi MatchParen guibg='.g:wal_colors[1].' guifg='.g:wal_colors[8]
exe 'hi ColorColumn guibg='.g:wal_colors[4].' guifg='.g:wal_colors[0]
exe 'hi signColumn guibg=NONE guifg='.g:wal_colors[4]
exe 'hi ErrorMsg guibg=NONE guifg='.g:wal_colors[8]
exe 'hi ModeMsg guibg=NONE guifg='.g:wal_colors[2]
exe 'hi MoreMsg guibg=NONE guifg='.g:wal_colors[2]
exe 'hi Question guibg=NONE guifg='.g:wal_colors[4]
exe 'hi WarningMsg guibg='.g:wal_colors[1].' guifg='.g:wal_colors[0]
exe 'hi Cursor guibg=NONE guifg='.g:wal_colors[8]
exe 'hi Structure guibg=NONE guifg='.g:wal_colors[5]
exe 'hi CursorColumn guibg='.g:wal_colors[8].' guifg='.g:wal_colors[7]
exe 'hi ModeMsg guibg=NONE guifg='.g:wal_colors[7]
exe 'hi SpellBad guibg=NONE guifg='.g:wal_colors[1].' gui=underline'
exe 'hi SpellCap guibg=NONE guifg='.g:wal_colors[4].' gui=underline'
exe 'hi SpellLocal guibg=NONE guifg='.g:wal_colors[5].' gui=underline'
exe 'hi SpellRare guibg=NONE guifg='.g:wal_colors[6].' gui=underline'
exe 'hi Boolean guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Character guibg=NONE guifg='.g:wal_colors[1]
exe 'hi Conditional guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Define guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Delimiter guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Float guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Include guibg=NONE guifg='.g:wal_colors[4]
exe 'hi Keyword guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Label guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Operator guibg=NONE guifg='.g:wal_colors[7]
exe 'hi Repeat guibg=NONE guifg='.g:wal_colors[3]
exe 'hi SpecialChar guibg=NONE guifg='.g:wal_colors[5]
exe 'hi Tag guibg=NONE guifg='.g:wal_colors[3]
exe 'hi Typedef guibg=NONE guifg='.g:wal_colors[3]
exe 'hi vimUserCommand guibg=NONE guifg='.g:wal_colors[1].' gui=BOLD'
    hi link vimMap vimUserCommand
    hi link vimLet vimUserCommand
    hi link vimCommand vimUserCommand
    hi link vimFTCmd vimUserCommand
    hi link vimAutoCmd vimUserCommand
    hi link vimNotFunc vimUserCommand
exe 'hi vimNotation guibg=NONE guifg='.g:wal_colors[4]
exe 'hi vimMapModKey guibg=NONE guifg='.g:wal_colors[4]
exe 'hi vimBracket guibg=NONE guifg='.g:wal_colors[7]
exe 'hi vimCommentString guibg=NONE guifg='.g:wal_colors[8]
exe 'hi htmlLink guibg=NONE guifg='.g:wal_colors[1].' gui=underline'
exe 'hi htmlBold guibg=NONE guifg='.g:wal_colors[3].' gui=BOLD'
exe 'hi htmlItalic guibg=NONE guifg='.g:wal_colors[5]
exe 'hi htmlEndTag guibg=NONE guifg='.g:wal_colors[7]
exe 'hi htmlTag guibg=NONE guifg='.g:wal_colors[7]
exe 'hi htmlTagName guibg=NONE guifg='.g:wal_colors[1].' gui=BOLD'
exe 'hi htmlH1 guibg=NONE guifg='.g:wal_colors[7]
    hi link htmlH2 htmlH1
    hi link htmlH3 htmlH1
    hi link htmlH4 htmlH1
    hi link htmlH5 htmlH1
    hi link htmlH6 htmlH1
exe 'hi cssMultiColumnAttr guibg=NONE guifg='.g:wal_colors[2]
    hi link cssFontAttr cssMultiColumnAttr
    hi link cssFlexibleBoxAttr cssMultiColumnAttr
exe 'hi cssBraces guibg=NONE guifg='.g:wal_colors[7]
    hi link cssAttrComma cssBraces
exe 'hi cssValueLength guibg=NONE guifg='.g:wal_colors[7]
exe 'hi cssUnitDecorators guibg=NONE guifg='.g:wal_colors[7]
exe 'hi cssValueNumber guibg=NONE guifg='.g:wal_colors[7]
    hi link cssValueLength cssValueNumber
exe 'hi cssNoise guibg=NONE guifg='.g:wal_colors[8]
exe 'hi cssTagName guibg=NONE guifg='.g:wal_colors[1]
exe 'hi cssFunctionName guibg=NONE guifg='.g:wal_colors[4]
exe 'hi scssSelectorChar guibg=NONE guifg='.g:wal_colors[7]
exe 'hi scssAttribute guibg=NONE guifg='.g:wal_colors[7]
    hi link scssDefinition cssNoise
exe 'hi sassidChar guibg=NONE guifg='.g:wal_colors[1]
exe 'hi sassClassChar guibg=NONE guifg='.g:wal_colors[5]
exe 'hi sassInclude guibg=NONE guifg='.g:wal_colors[5]
exe 'hi sassMixing guibg=NONE guifg='.g:wal_colors[5]
exe 'hi sassMixinName guibg=NONE guifg='.g:wal_colors[4]
exe 'hi javaScript guibg=NONE guifg='.g:wal_colors[7]
exe 'hi javaScriptBraces guibg=NONE guifg='.g:wal_colors[7]
exe 'hi javaScriptNumber guibg=NONE guifg='.g:wal_colors[5]
exe 'hi markdownH1 guibg=NONE guifg='.g:wal_colors[7]
    hi link markdownH2 markdownH1
    hi link markdownH3 markdownH1
    hi link markdownH4 markdownH1
    hi link markdownH5 markdownH1
    hi link markdownH6 markdownH1
exe 'hi markdownAutomaticLink guibg=NONE guifg='.g:wal_colors[2].' gui=underline'
    hi link markdownUrl markdownAutomaticLink
exe 'hi markdownError guibg=NONE guifg='.g:wal_colors[7]
exe 'hi markdownCode guibg=NONE guifg='.g:wal_colors[3]
exe 'hi markdownCodeBlock guibg=NONE guifg='.g:wal_colors[3]
exe 'hi markdownCodeDelimiter guibg=NONE guifg='.g:wal_colors[5]
hi markdownItalic gui=Italic
hi markdownBold gui=Bold
exe 'hi xdefaultsValue guibg=NONE guifg='.g:wal_colors[7]
exe 'hi rubyInclude guibg=NONE guifg='.g:wal_colors[4]
exe 'hi rubyDefine guibg=NONE guifg='.g:wal_colors[5]
exe 'hi rubyFunction guibg=NONE guifg='.g:wal_colors[4]
exe 'hi rubyStringDelimiter guibg=NONE guifg='.g:wal_colors[2]
exe 'hi rubyInteger guibg=NONE guifg='.g:wal_colors[3]
exe 'hi rubyAttribute guibg=NONE guifg='.g:wal_colors[4]
exe 'hi rubyConstant guibg=NONE guifg='.g:wal_colors[3]
exe 'hi rubyInterpolation guibg=NONE guifg='.g:wal_colors[2]
exe 'hi rubyInterpolationDelimiter guibg=NONE guifg='.g:wal_colors[3]
exe 'hi rubyRegexp guibg=NONE guifg='.g:wal_colors[6]
exe 'hi rubySymbol guibg=NONE guifg='.g:wal_colors[2]
exe 'hi rubyTodo guibg=NONE guifg='.g:wal_colors[8]
exe 'hi rubyRegexpAnchor guibg=NONE guifg='.g:wal_colors[7]
    hi link rubyRegexpQuantifier rubyRegexpAnchor
exe 'hi pythonOperator guibg=NONE guifg='.g:wal_colors[5]
exe 'hi pythonFunction guibg=NONE guifg='.g:wal_colors[4]
exe 'hi pythonRepeat guibg=NONE guifg='.g:wal_colors[5]
exe 'hi pythonStatement guibg=NONE guifg='.g:wal_colors[1].' gui=Bold'
exe 'hi pythonBuiltIn guibg=NONE guifg='.g:wal_colors[4]
exe 'hi phpMemberSelector guibg=NONE guifg='.g:wal_colors[7]
exe 'hi phpComparison guibg=NONE guifg='.g:wal_colors[7]
exe 'hi phpParent guibg=NONE guifg='.g:wal_colors[7]
exe 'hi cOperator guibg=NONE guifg='.g:wal_colors[6]
exe 'hi cPreCondit guibg=NONE guifg='.g:wal_colors[5]
exe 'hi SignifySignAdd guibg=NONE guifg='.g:wal_colors[2]
exe 'hi SignifySignChange guibg=NONE guifg='.g:wal_colors[4]
exe 'hi SignifySignDelete guibg=NONE guifg='.g:wal_colors[1]
exe 'hi NERDTreeDirSlash guibg=NONE guifg='.g:wal_colors[4]
exe 'hi NERDTreeExecFile guibg=NONE guifg='.g:wal_colors[7]
exe 'hi ALEErrorSign guibg=NONE guifg='.g:wal_colors[1]
exe 'hi ALEWarningSign guibg=NONE guifg='.g:wal_colors[3]
exe 'hi ALEError guibg=NONE guifg='.g:wal_colors[1]
exe 'hi ALEWarning guibg=NONE guifg='.g:wal_colors[3]

" }}}

" Plugin options {{{

let g:limelight_conceal_guifg = 8

" }}}
