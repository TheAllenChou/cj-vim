set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "citrusnberries"

hi Comment guifg=#7DCC66
hi Constant guifg=#FF77AD gui=NONE cterm=NONE term=NONE
hi Cursor guifg=#808080 guibg=#F0F0F0
hi CursorColumn guibg=gray40
hi CursorIM gui=None
hi CursorLine guibg=gray40
hi DiffAdd guibg=darkblue
hi DiffChange guibg=darkmagenta
hi DiffDelete guifg=blue guibg=darkcyan
hi DiffText guibg=red
hi Directory guifg=cyan
hi Error guifg=#A00000
hi ErrorMsg guifg=#A00000
hi FoldColumn guifg=gray80 guibg=gray30
hi Folded guifg=gray80 guibg=gray30
hi Identifier guifg=#FFFFFF
hi Ignore guifg=gray40
hi IncSearch gui=reverse guifg=slategrey guibg=white
hi LineNr guifg=#2B91AF
hi MatchParen guibg=darkcyan
hi ModeMsg guifg=goldenrod
hi MoreMsg guifg=seagreen
hi NonText guifg=#808080
hi Normal guifg=white guibg=#22282B
hi Number guifg=#029BFF
hi Pmenu guibg=magenta
hi PmenuSbar guibg=grey
hi PmenuSel guibg=darkgray
hi PmenuThumb gui=reverse
hi PreProc guifg=#A891FF
hi Question guifg=springgreen
hi Search guibg=#626262
hi SignColumn guifg=cyan guibg=grey
hi Special guifg=navajowhite
hi SpecialKey guifg=#808080
hi SpellBad gui=undercurl
hi SpellCap gui=undercurl
hi SpellLocal gui=undercurl
hi SpellRare gui=undercurl
hi Statement guifg=#FFBF00 gui=NONE cterm=NONE term=NONE
hi StatusLine guifg=black guibg=#c2bfa5
hi StatusLineNC guifg=gray50 guibg=#c2bfa5
hi String guifg=#FF77AD
hi TabLine gui=underline guibg=darkgray
hi TabLineFill gui=reverse
hi TabLineSel gui=NONE cterm=NONE term=NONE
hi Title guifg=white
hi Todo guifg=orangered guibg=yellow2
hi Type guifg=gold gui=NONE cterm=NONE term=NONE
hi Underlined gui=underline guifg=#80a0ff
hi VertSplit guifg=gray50 guibg=#c2bfa5
hi Visual guibg=#3C3F41
hi VisualNOS gui=NONE cterm=NONE term=NONE
hi WarningMsg guifg=salmon
hi WildMenu guifg=black guibg=yellow
hi link Boolean Constant
hi link Character Constant
hi link Conditional Statement
hi link Debug Special
hi link Define PreProc
hi link Delimiter Special
hi link Exception Statement
hi link Float Constant
hi link Function Identifier
hi link Include PreProc
hi link Keyword Statement
hi link Label Statement
hi link Macro PreProc
hi link Operator Statement
hi link PreCondit PreProc
hi link Repeat Statement
hi link SpecialChar Special
hi link SpecialComment Special
hi link StorageClass Type
hi link Structure Type
hi link Tag Special
hi link Typedef Type
