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

let fn = expand('$HOME/.cache/wal/colors')
if ! filereadable(fn)
  echoe "[" . fn . "] not readable"
  finish
endif
let colors = readfile(fn)

" set t_Co=16
exe 'hi Normal guibg=NONE guifg='.colors[7]
exe 'hi NonText guibg=NONE guifg='.colors[0]
exe 'hi Comment guibg=NONE guifg='.colors[8]
hi Conceal guibg=NONE
exe 'hi Constant guibg=NONE guifg='.colors[3]
exe 'hi Error guibg='.colors[1].' guifg='.colors[7]
exe 'hi Identifier guibg=NONE guifg='.colors[1].' gui=BOLD'
exe 'hi Ignore guibg='.colors[8].' guifg='.colors[0]
exe 'hi PreProc guibg=NONE guifg='.colors[3]
exe 'hi Special guibg=NONE guifg='.colors[6]
exe 'hi Statement guibg=NONE guifg='.colors[1]
exe 'hi String guibg=NONE guifg='.colors[2]
exe 'hi Number guibg=NONE guifg='.colors[3]
exe 'hi Todo guibg='.colors[2].' guifg='.colors[0]
exe 'hi Type guibg=NONE guifg='.colors[3]
exe 'hi Underlined guibg=NONE guifg='.colors[1].' gui=underline'
exe 'hi StatusLine guibg='.colors[7].' guifg='.colors[0]
exe 'hi StatusLineNC guibg='.colors[8].' guifg='.colors[0]
exe 'hi TabLine guibg=NONE guifg='.colors[8]
exe 'hi TabLineFill guibg=NONE guifg='.colors[8]
exe 'hi TabLineSel guibg='.colors[4].' guifg='.colors[0]
exe 'hi TermCursorNC guibg='.colors[3].' guifg='.colors[0]
exe 'hi VertSplit guibg='.colors[8].' guifg='.colors[0]
exe 'hi Title guibg=NONE guifg='.colors[4]
exe 'hi CursorLine guibg='.colors[2].' guifg='.colors[0]
exe 'hi LineNr guibg=NONE guifg='.colors[8]
exe 'hi CursorLineNr guibg=NONE guifg='.colors[8]
exe 'hi helpLeadBlank guibg=NONE guifg='.colors[7]
exe 'hi helpNormal guibg=NONE guifg='.colors[7]
exe 'hi Visual guibg='.colors[0].' guifg='.colors[15].' gui=reverse term=reverse'
exe 'hi VisualNOS guibg=NONE guifg='.colors[1]
exe 'hi Pmenu guibg='.colors[8].' guifg='.colors[7]
exe 'hi PmenuSbar guibg='.colors[6].' guifg='.colors[7]
exe 'hi PmenuSel guibg='.colors[4].' guifg='.colors[0]
exe 'hi PmenuThumb guibg='.colors[8].' guifg='.colors[8]
exe 'hi FoldColumn guibg=NONE guifg='.colors[7]
exe 'hi Folded guibg=NONE guifg='.colors[8]
exe 'hi WildMenu guibg='.colors[2].' guifg='.colors[0]
exe 'hi SpecialKey guibg=NONE guifg='.colors[8]
exe 'hi DiffAdd guibg=NONE guifg='.colors[2]
exe 'hi DiffChange guibg=NONE guifg='.colors[8]
exe 'hi DiffDelete guibg=NONE guifg='.colors[1]
exe 'hi DiffText guibg=NONE guifg='.colors[4]
exe 'hi IncSearch guibg='.colors[3].' guifg='.colors[0]
exe 'hi Search guibg='.colors[3].' guifg='.colors[0]
exe 'hi Directory guibg=NONE guifg='.colors[4]
exe 'hi MatchParen guibg='.colors[1].' guifg='.colors[8]
exe 'hi ColorColumn guibg='.colors[4].' guifg='.colors[0]
exe 'hi signColumn guibg=NONE guifg='.colors[4]
exe 'hi ErrorMsg guibg=NONE guifg='.colors[8]
exe 'hi ModeMsg guibg=NONE guifg='.colors[2]
exe 'hi MoreMsg guibg=NONE guifg='.colors[2]
exe 'hi Question guibg=NONE guifg='.colors[4]
exe 'hi WarningMsg guibg='.colors[1].' guifg='.colors[0]
exe 'hi Cursor guibg=NONE guifg='.colors[8]
exe 'hi Structure guibg=NONE guifg='.colors[5]
exe 'hi CursorColumn guibg='.colors[8].' guifg='.colors[7]
exe 'hi ModeMsg guibg=NONE guifg='.colors[7]
exe 'hi SpellBad guibg=NONE guifg='.colors[1].' gui=underline'
exe 'hi SpellCap guibg=NONE guifg='.colors[4].' gui=underline'
exe 'hi SpellLocal guibg=NONE guifg='.colors[5].' gui=underline'
exe 'hi SpellRare guibg=NONE guifg='.colors[6].' gui=underline'
exe 'hi Boolean guibg=NONE guifg='.colors[5]
exe 'hi Character guibg=NONE guifg='.colors[1]
exe 'hi Conditional guibg=NONE guifg='.colors[5]
exe 'hi Define guibg=NONE guifg='.colors[5]
exe 'hi Delimiter guibg=NONE guifg='.colors[5]
exe 'hi Float guibg=NONE guifg='.colors[5]
exe 'hi Include guibg=NONE guifg='.colors[4]
exe 'hi Keyword guibg=NONE guifg='.colors[5]
exe 'hi Label guibg=NONE guifg='.colors[3]
exe 'hi Operator guibg=NONE guifg='.colors[7]
exe 'hi Repeat guibg=NONE guifg='.colors[3]
exe 'hi SpecialChar guibg=NONE guifg='.colors[5]
exe 'hi Tag guibg=NONE guifg='.colors[3]
exe 'hi Typedef guibg=NONE guifg='.colors[3]
exe 'hi vimUserCommand guibg=NONE guifg='.colors[1].' gui=BOLD'
    hi link vimMap vimUserCommand
    hi link vimLet vimUserCommand
    hi link vimCommand vimUserCommand
    hi link vimFTCmd vimUserCommand
    hi link vimAutoCmd vimUserCommand
    hi link vimNotFunc vimUserCommand
exe 'hi vimNotation guibg=NONE guifg='.colors[4]
exe 'hi vimMapModKey guibg=NONE guifg='.colors[4]
exe 'hi vimBracket guibg=NONE guifg='.colors[7]
exe 'hi vimCommentString guibg=NONE guifg='.colors[8]
exe 'hi htmlLink guibg=NONE guifg='.colors[1].' gui=underline'
exe 'hi htmlBold guibg=NONE guifg='.colors[3].' gui=BOLD'
exe 'hi htmlItalic guibg=NONE guifg='.colors[5]
exe 'hi htmlEndTag guibg=NONE guifg='.colors[7]
exe 'hi htmlTag guibg=NONE guifg='.colors[7]
exe 'hi htmlTagName guibg=NONE guifg='.colors[1].' gui=BOLD'
exe 'hi htmlH1 guibg=NONE guifg='.colors[7]
    hi link htmlH2 htmlH1
    hi link htmlH3 htmlH1
    hi link htmlH4 htmlH1
    hi link htmlH5 htmlH1
    hi link htmlH6 htmlH1
exe 'hi cssMultiColumnAttr guibg=NONE guifg='.colors[2]
    hi link cssFontAttr cssMultiColumnAttr
    hi link cssFlexibleBoxAttr cssMultiColumnAttr
exe 'hi cssBraces guibg=NONE guifg='.colors[7]
    hi link cssAttrComma cssBraces
exe 'hi cssValueLength guibg=NONE guifg='.colors[7]
exe 'hi cssUnitDecorators guibg=NONE guifg='.colors[7]
exe 'hi cssValueNumber guibg=NONE guifg='.colors[7]
    hi link cssValueLength cssValueNumber
exe 'hi cssNoise guibg=NONE guifg='.colors[8]
exe 'hi cssTagName guibg=NONE guifg='.colors[1]
exe 'hi cssFunctionName guibg=NONE guifg='.colors[4]
exe 'hi scssSelectorChar guibg=NONE guifg='.colors[7]
exe 'hi scssAttribute guibg=NONE guifg='.colors[7]
    hi link scssDefinition cssNoise
exe 'hi sassidChar guibg=NONE guifg='.colors[1]
exe 'hi sassClassChar guibg=NONE guifg='.colors[5]
exe 'hi sassInclude guibg=NONE guifg='.colors[5]
exe 'hi sassMixing guibg=NONE guifg='.colors[5]
exe 'hi sassMixinName guibg=NONE guifg='.colors[4]
exe 'hi javaScript guibg=NONE guifg='.colors[7]
exe 'hi javaScriptBraces guibg=NONE guifg='.colors[7]
exe 'hi javaScriptNumber guibg=NONE guifg='.colors[5]
exe 'hi markdownH1 guibg=NONE guifg='.colors[7]
    hi link markdownH2 markdownH1
    hi link markdownH3 markdownH1
    hi link markdownH4 markdownH1
    hi link markdownH5 markdownH1
    hi link markdownH6 markdownH1
exe 'hi markdownAutomaticLink guibg=NONE guifg='.colors[2].' gui=underline'
    hi link markdownUrl markdownAutomaticLink
exe 'hi markdownError guibg=NONE guifg='.colors[7]
exe 'hi markdownCode guibg=NONE guifg='.colors[3]
exe 'hi markdownCodeBlock guibg=NONE guifg='.colors[3]
exe 'hi markdownCodeDelimiter guibg=NONE guifg='.colors[5]
hi markdownItalic gui=Italic
hi markdownBold gui=Bold
exe 'hi xdefaultsValue guibg=NONE guifg='.colors[7]
exe 'hi rubyInclude guibg=NONE guifg='.colors[4]
exe 'hi rubyDefine guibg=NONE guifg='.colors[5]
exe 'hi rubyFunction guibg=NONE guifg='.colors[4]
exe 'hi rubyStringDelimiter guibg=NONE guifg='.colors[2]
exe 'hi rubyInteger guibg=NONE guifg='.colors[3]
exe 'hi rubyAttribute guibg=NONE guifg='.colors[4]
exe 'hi rubyConstant guibg=NONE guifg='.colors[3]
exe 'hi rubyInterpolation guibg=NONE guifg='.colors[2]
exe 'hi rubyInterpolationDelimiter guibg=NONE guifg='.colors[3]
exe 'hi rubyRegexp guibg=NONE guifg='.colors[6]
exe 'hi rubySymbol guibg=NONE guifg='.colors[2]
exe 'hi rubyTodo guibg=NONE guifg='.colors[8]
exe 'hi rubyRegexpAnchor guibg=NONE guifg='.colors[7]
    hi link rubyRegexpQuantifier rubyRegexpAnchor
exe 'hi pythonOperator guibg=NONE guifg='.colors[5]
exe 'hi pythonFunction guibg=NONE guifg='.colors[4]
exe 'hi pythonRepeat guibg=NONE guifg='.colors[5]
exe 'hi pythonStatement guibg=NONE guifg='.colors[1].' gui=Bold'
exe 'hi pythonBuiltIn guibg=NONE guifg='.colors[4]
exe 'hi phpMemberSelector guibg=NONE guifg='.colors[7]
exe 'hi phpComparison guibg=NONE guifg='.colors[7]
exe 'hi phpParent guibg=NONE guifg='.colors[7]
exe 'hi cOperator guibg=NONE guifg='.colors[6]
exe 'hi cPreCondit guibg=NONE guifg='.colors[5]
exe 'hi SignifySignAdd guibg=NONE guifg='.colors[2]
exe 'hi SignifySignChange guibg=NONE guifg='.colors[4]
exe 'hi SignifySignDelete guibg=NONE guifg='.colors[1]
exe 'hi NERDTreeDirSlash guibg=NONE guifg='.colors[4]
exe 'hi NERDTreeExecFile guibg=NONE guifg='.colors[7]
exe 'hi ALEErrorSign guibg=NONE guifg='.colors[1]
exe 'hi ALEWarningSign guibg=NONE guifg='.colors[3]
exe 'hi ALEError guibg=NONE guifg='.colors[1]
exe 'hi ALEWarning guibg=NONE guifg='.colors[3]

" }}}

" Plugin options {{{

let g:limelight_conceal_guifg = 8

" }}}
