" Vim color file
" Name:       herald.vim
" Author:     Fabio Cevasco <h3rald@h3rald.com>
" Version:    0.2.0
" Notes:      Supports 8, 16, 256 and 16,777,216 (RGB) color modes

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "herald"

set background=dark

" Set some syntax-related variables
let ruby_operators = 1

if has("gui_running")

	" -> Text; Miscellaneous
	hi Normal         guibg=#1F1F1F guifg=#D0D0D0 gui=none
	hi SpecialKey     guibg=#1F1F1F guifg=#E783E9 gui=none
	hi VertSplit      guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi SignColumn     guibg=#1F1F1F guifg=#BF81FA gui=none
	hi NonText        guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Directory      guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi Title          guibg=#1F1F1F guifg=#6DF584 gui=bold

	" -> Cursor
	hi Cursor         guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorIM       guibg=#FFEE68 guifg=#1F1F1F gui=none
	hi CursorColumn   guibg=#000000               gui=none
	hi CursorLine     guibg=#000000               gui=none

	" -> Folding
	hi FoldColumn     guibg=#1A1A1A guifg=#494547 gui=none
	hi Folded         guibg=#1A1A1A guifg=#494547 gui=none

	" -> Color column should match look similar to folding
	hi ColorColumn    guibg=#2A2A2A               gui=none

	" -> Line info
	hi LineNr         guibg=#000000 guifg=#696567 gui=none
	hi StatusLine     guibg=#000000 guifg=#696567 gui=none
	hi StatusLineNC   guibg=#25365a guifg=#696567 gui=none

	" -> Messages
	hi ErrorMsg       guibg=#A32024 guifg=#D0D0D0 gui=none
	hi Question       guibg=#1F1F1F guifg=#FFA500 gui=none
	hi WarningMsg     guibg=#FFA500 guifg=#000000 gui=none
	hi MoreMsg        guibg=#1F1F1F guifg=#FFA500 gui=none
	hi ModeMsg        guibg=#1F1F1F guifg=#FFA500 gui=none

	" -> Search
	hi Search         guibg=#C4A000               gui=none
	hi IncSearch      guibg=#C4A000               gui=none

	" -> Diff
	hi DiffAdd        guibg=#006124 guifg=#ED9000 gui=none
	hi DiffChange     guibg=#0B294A guifg=#A36000 gui=none
	hi DiffDelete     guibg=#081F38 guifg=#ED9000 gui=none
	hi DiffText       guibg=#12457D guifg=#ED9000 gui=underline

	" -> Menu
	hi Pmenu          guibg=#140100 guifg=#660300 gui=none
	hi PmenuSel       guibg=#F17A00 guifg=#4C0200 gui=none
	hi PmenuSbar      guibg=#430300               gui=none
	hi PmenuThumb     guibg=#720300               gui=none

	" -> Tabs
	hi TabLine        guibg=#FFFFFF guifg=#1F1F1F gui=none
	hi TabLineFill    guibg=#000000               gui=none
	hi TabLineSel     guibg=#1F1F1F guifg=#D0D0D0 gui=bold
	"
	" -> Visual Mode
	hi Visual         guibg=#000000 guifg=#FFB539 gui=none
	hi VisualNOS      guibg=#000000 guifg=#696567 gui=none

	" -> Code
	hi Comment        guibg=#1F1F1F guifg=#696567 gui=none
	hi Constant       guibg=#1F1F1F guifg=#6DF584 gui=none
	hi String         guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Error          guibg=#1F1F1F guifg=#FC4234 gui=none
	hi Identifier     guibg=#1F1F1F guifg=#70BDF1 gui=none
	hi Function       guibg=#1F1F1F guifg=#90CBF1 gui=none
	hi Ignore         guibg=#1F1F1F guifg=#1F1F1F gui=none
	hi MatchParen     guibg=#FFA500 guifg=#1F1F1F gui=none
	hi PreProc        guibg=#1F1F1F guifg=#BF81FA gui=none
	hi Special        guibg=#1F1F1F guifg=#FFB539 gui=none
	hi Todo           guibg=#1F1F1F guifg=#FC4234 gui=bold
	hi Underlined     guibg=#1F1F1F guifg=#FC4234 gui=underline
	hi Statement      guibg=#1F1F1F guifg=#E783E9 gui=none
	hi Operator       guibg=#1F1F1F guifg=#FC6984 gui=none
	hi Delimiter      guibg=#1F1F1F guifg=#FFEC48 gui=none
	hi Type           guibg=#1F1F1F guifg=#FFEE68 gui=none
	hi Exception      guibg=#1F1F1F guifg=#FC4234 gui=none

	" -> HTML-specific
	hi htmlBold                 guibg=#1F1F1F guifg=#D0D0D0 gui=bold
	hi htmlBoldItalic           guibg=#1F1F1F guifg=#D0D0D0 gui=bold,italic
	hi htmlBoldUnderline        guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline
	hi htmlBoldUnderlineItalic  guibg=#1F1F1F guifg=#D0D0D0 gui=bold,underline,italic
	hi htmlItalic               guibg=#1F1F1F guifg=#D0D0D0 gui=italic
	hi htmlUnderline            guibg=#1F1F1F guifg=#D0D0D0 gui=underline
	hi htmlUnderlineItalic      guibg=#1F1F1F guifg=#D0D0D0 gui=underline,italic

elseif &t_Co == 256

	" -> Text; Miscellaneous
	hi Normal                      ctermfg=252   cterm=none
	hi SpecialKey                  ctermfg=176   cterm=none
	hi VertSplit                   ctermfg=227   cterm=none
	hi SignColumn                  ctermfg=141   cterm=none
	hi NonText                     ctermfg=204   cterm=none
	hi Directory                   ctermfg=227   cterm=none
	hi Title                       ctermfg=84    cterm=bold

	" -> Cursor
	hi Cursor         ctermbg=227  ctermfg=234   cterm=none
	hi CursorIM       ctermbg=227  ctermfg=234   cterm=none
	hi CursorColumn   ctermbg=0                  cterm=none
	hi CursorLine     ctermbg=233                cterm=none

	" -> Folding
	hi FoldColumn     ctermbg=234  ctermfg=25    cterm=none
	hi Folded         ctermbg=234  ctermfg=25    cterm=none

	" -> Color column should match look similar to folding
	hi ColorColumn    ctermbg=235                cterm=none

	" -> Line info
	hi LineNr         ctermbg=235  ctermfg=255   cterm=none
	hi StatusLine     ctermbg=235  ctermfg=255   cterm=none
	hi StatusLineNC   ctermbg=237  ctermfg=241   cterm=none

	" -> Messages
	hi ErrorMsg       ctermbg=124  ctermfg=252   cterm=none
	hi Question       ctermbg=234  ctermfg=214   cterm=none
	hi WarningMsg     ctermbg=214  ctermfg=0     cterm=none
	hi MoreMsg        ctermbg=234  ctermfg=214   cterm=none
	hi ModeMsg        ctermbg=234  ctermfg=214   cterm=none

	" -> Search
	hi Search         ctermbg=11   ctermfg=24    cterm=none
	hi IncSearch      ctermbg=11   ctermfg=24    cterm=none

	" -> Diff
	hi DiffAdd        ctermbg=22   ctermfg=208   cterm=none
	hi DiffChange     ctermbg=235  ctermfg=130   cterm=none
	hi DiffDelete     ctermbg=234  ctermfg=208   cterm=none
	hi DiffText       ctermbg=24   ctermfg=208   cterm=underline

	" -> Menu
	hi Pmenu          ctermbg=0    ctermfg=52    cterm=none
	hi PmenuSel       ctermbg=208  ctermfg=52    cterm=none
	hi PmenuSbar      ctermbg=52                 cterm=none
	hi PmenuThumb     ctermbg=52                 cterm=none
	hi PmenuSel       ctermbg=208  ctermfg=52    cterm=none

	" -> Tabs 234
	hi TabLine        ctermbg=233  ctermfg=248   cterm=none
	hi TabLineFill    ctermbg=0                  cterm=none
	hi TabLineSel     ctermbg=234  ctermfg=230   cterm=bold
	"
	" -> Visual Mode
	hi Visual         ctermbg=8                  cterm=none
	hi VisualNOS      ctermbg=8                  cterm=none

	" -> Code
	hi Comment                     ctermfg=241   cterm=none
	hi Constant                    ctermfg=84    cterm=none
	hi String                      ctermfg=215   cterm=none
	hi Error                       ctermfg=203   cterm=none
	hi Identifier                  ctermfg=75    cterm=none
	hi Function                    ctermfg=117   cterm=none
	hi Ignore                      ctermfg=234   cterm=none
	hi MatchParen                  ctermfg=234   cterm=none
	hi PreProc                     ctermfg=141   cterm=none
	hi Special                     ctermfg=215   cterm=none
	hi Todo                        ctermfg=203   cterm=bold
	hi Underlined                  ctermfg=203   cterm=underline
	hi Statement                   ctermfg=176   cterm=none
	hi Operator                    ctermfg=204   cterm=none
	hi Delimiter                   ctermfg=227   cterm=none
	hi Type                        ctermfg=227   cterm=none
	hi Exception                   ctermfg=203   cterm=none

	" -> HTML-specific
	hi htmlBold                              ctermfg=252   cterm=bold
	hi htmlBoldItalic                        ctermfg=252   cterm=bold,italic
	hi htmlBoldUnderline                     ctermfg=252   cterm=bold,underline
	hi htmlBoldUnderlineItalic               ctermfg=252   cterm=bold,underline,italic
	hi htmlItalic                            ctermfg=252   cterm=italic
	hi htmlUnderline                         ctermfg=252   cterm=underline
	hi htmlUnderlineItalic                   ctermfg=252   cterm=underline,italic

elseif &t_Co == 16

	" -> Text; Miscellaneous
	hi Normal         ctermbg=8  ctermfg=15 cterm=none
	hi SpecialKey     ctermbg=8  ctermfg=5  cterm=none
	hi VertSplit      ctermbg=8  ctermfg=14  cterm=none
	hi SignColumn     ctermbg=8  ctermfg=5  cterm=none
  hi NonText        ctermbg=8  ctermfg=4  cterm=none
  hi Directory      ctermbg=8  ctermfg=14  cterm=none
  hi Title          ctermbg=8  ctermfg=10 cterm=bold

  " -> Cursor
  hi Cursor         ctermbg=14 ctermfg=8  cterm=none
  hi CursorIM       ctermbg=14 ctermfg=8  cterm=none
  hi CursorColumn   ctermbg=0            cterm=none
  hi CursorLine     ctermbg=0            cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=0  ctermfg=1  cterm=none
  hi Folded         ctermbg=0  ctermfg=1  cterm=none

  " -> Line info
  hi LineNr         ctermbg=0  ctermfg=7  cterm=none
  hi StatusLine     ctermbg=0  ctermfg=7  cterm=none
  hi StatusLineNC   ctermbg=0  ctermfg=7  cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4  ctermfg=7  cterm=none
  hi Question       ctermbg=8  ctermfg=14 cterm=none
  hi WarningMsg     ctermbg=14 ctermfg=0  cterm=none
  hi MoreMsg        ctermbg=8  ctermfg=14 cterm=none
  hi ModeMsg        ctermbg=8  ctermfg=14 cterm=none

  " -> Search
  hi Search         ctermbg=6             cterm=none
  hi IncSearch      ctermbg=6             cterm=none

  " -> Diff
  hi DiffAdd        ctermbg=0  ctermfg=10 cterm=none
  hi DiffChange     ctermbg=0  ctermfg=14 cterm=none
  hi DiffDelete     ctermbg=0  ctermfg=12 cterm=none
  hi DiffText       ctermbg=1  ctermfg=14 cterm=underline

  " -> Menu
  hi Pmenu          ctermbg=0  ctermfg=4  cterm=none
  hi PmenuSel       ctermbg=14 ctermfg=4  cterm=none
  hi PmenuSbar      ctermbg=0             cterm=none
  hi PmenuThumb     ctermbg=4             cterm=none
  hi PmenuSel       ctermbg=14 ctermfg=4  cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7  ctermfg=8  cterm=none
  hi TabLineFill    ctermbg=0             cterm=none
  hi TabLineSel     ctermbg=8  ctermfg=7  cterm=bold
  "
  " -> Visual Mode
  hi Visual         ctermbg=0  ctermfg=14 cterm=none
  hi VisualNOS      ctermbg=0  ctermfg=7  cterm=none

  " -> Code
  hi Comment        ctermbg=8  ctermfg=7  cterm=none
  hi Constant       ctermbg=8  ctermfg=10 cterm=none
  hi String         ctermbg=8  ctermfg=6  cterm=none
  hi Error          ctermbg=8  ctermfg=4  cterm=none
  hi Identifier     ctermbg=8  ctermfg=11 cterm=none
  hi Function       ctermbg=8  ctermfg=11 cterm=none
  hi Ignore         ctermbg=8  ctermfg=8  cterm=none
  hi MatchParen     ctermbg=14 ctermfg=8  cterm=none
  hi PreProc        ctermbg=8  ctermfg=5  cterm=none
  hi Special        ctermbg=8  ctermfg=12 cterm=none
  hi Todo           ctermbg=8  ctermfg=12 cterm=bold
  hi Underlined     ctermbg=8  ctermfg=12 cterm=underline
  hi Statement      ctermbg=8  ctermfg=13 cterm=none
  hi Operator       ctermbg=8  ctermfg=4  cterm=none
  hi Delimiter      ctermbg=8  ctermfg=14 cterm=none
  hi Type           ctermbg=8  ctermfg=14 cterm=none
  hi Exception      ctermbg=8  ctermfg=12 cterm=none

  " -> HTML-specific
  hi htmlBold                  ctermbg=8 ctermfg=7 cterm=bold
  hi htmlBoldItalic            ctermbg=8 ctermfg=7 cterm=bold,italic
  hi htmlBoldUnderline         ctermbg=8 ctermfg=7 cterm=bold,underline
  hi htmlBoldUnderlineItalic   ctermbg=8 ctermfg=7 cterm=bold,underline,italic
  hi htmlItalic                ctermbg=8 ctermfg=7 cterm=italic
  hi htmlUnderline             ctermbg=8 ctermfg=7 cterm=underline
  hi htmlUnderlineItalic       ctermbg=8 ctermfg=7 cterm=underline,italic


elseif &t_Co == 8

	" -> Text; Miscellaneous
	hi Normal         ctermbg=8  ctermfg=7  cterm=none
	hi SpecialKey     ctermbg=8  ctermfg=5  cterm=none
	hi VertSplit      ctermbg=8  ctermfg=6  cterm=none
	hi SignColumn     ctermbg=8  ctermfg=5  cterm=none
  hi NonText        ctermbg=8  ctermfg=4  cterm=none
  hi Directory      ctermbg=8  ctermfg=6  cterm=none
  hi Title          ctermbg=8  ctermfg=2  cterm=bold

  " -> Cursor
  hi Cursor         ctermbg=6  ctermfg=8  cterm=none
  hi CursorIM       ctermbg=6  ctermfg=8  cterm=none
  hi CursorColumn   ctermbg=0             cterm=none
  hi CursorLine     ctermbg=0             cterm=none

  " -> Folding
  hi FoldColumn     ctermbg=0  ctermfg=1  cterm=none
  hi Folded         ctermbg=0  ctermfg=1  cterm=none

  " -> Line info
  hi LineNr         ctermbg=0  ctermfg=7  cterm=none
  hi StatusLine     ctermbg=0  ctermfg=7  cterm=none
  hi StatusLineNC   ctermbg=0  ctermfg=7  cterm=none

  " -> Messages
  hi ErrorMsg       ctermbg=4  ctermfg=7  cterm=none
  hi Question       ctermbg=8  ctermfg=6  cterm=none
  hi WarningMsg     ctermbg=6  ctermfg=0  cterm=none
  hi MoreMsg        ctermbg=8  ctermfg=6  cterm=none
  hi ModeMsg        ctermbg=8  ctermfg=6  cterm=none

  " -> Search
  hi Search         ctermbg=6             cterm=none
  hi IncSearch      ctermbg=6             cterm=none

  " -> Diff
  hi DiffAdd        ctermbg=0  ctermfg=2  cterm=none
  hi DiffChange     ctermbg=0  ctermfg=6  cterm=none
  hi DiffDelete     ctermbg=0  ctermfg=4  cterm=none
  hi DiffText       ctermbg=1  ctermfg=6  cterm=underline

  " -> Menu
  hi Pmenu          ctermbg=0  ctermfg=4  cterm=none
  hi PmenuSel       ctermbg=6  ctermfg=4  cterm=none
  hi PmenuSbar      ctermbg=0             cterm=none
  hi PmenuThumb     ctermbg=4             cterm=none
  hi PmenuSel       ctermbg=6  ctermfg=4  cterm=none

  " -> Tabs
  hi TabLine        ctermbg=7  ctermfg=8  cterm=none
  hi TabLineFill    ctermbg=0             cterm=none
  hi TabLineSel     ctermbg=8  ctermfg=7  cterm=bold
  "
  " -> Visual Mode
  hi Visual         ctermbg=0  ctermfg=6 cterm=none
  hi VisualNOS      ctermbg=0  ctermfg=7  cterm=none

  " -> Code
  hi Comment        ctermbg=8  ctermfg=7  cterm=none
  hi Constant       ctermbg=8  ctermfg=2 cterm=none
  hi String         ctermbg=8  ctermfg=6  cterm=none
  hi Error          ctermbg=8  ctermfg=4  cterm=none
  hi Identifier     ctermbg=8  ctermfg=3 cterm=none
  hi Function       ctermbg=8  ctermfg=3 cterm=none
  hi Ignore         ctermbg=8  ctermfg=8  cterm=none
  hi MatchParen     ctermbg=6  ctermfg=8  cterm=none
  hi PreProc        ctermbg=8  ctermfg=5  cterm=none
  hi Special        ctermbg=8  ctermfg=4 cterm=none
  hi Todo           ctermbg=8  ctermfg=4 cterm=bold
  hi Underlined     ctermbg=8  ctermfg=4 cterm=underline
  hi Statement      ctermbg=8  ctermfg=5 cterm=none
  hi Operator       ctermbg=8  ctermfg=4  cterm=none
  hi Delimiter      ctermbg=8  ctermfg=6 cterm=none
  hi Type           ctermbg=8  ctermfg=6 cterm=none
  hi Exception      ctermbg=8  ctermfg=4 cterm=none

  " -> HTML-specific
  hi htmlBold                  ctermbg=8 ctermfg=7 cterm=bold
  hi htmlBoldItalic            ctermbg=8 ctermfg=7 cterm=bold,italic
  hi htmlBoldUnderline         ctermbg=8 ctermfg=7 cterm=bold,underline
  hi htmlBoldUnderlineItalic   ctermbg=8 ctermfg=7 cterm=bold,underline,italic
  hi htmlItalic                ctermbg=8 ctermfg=7 cterm=italic
  hi htmlUnderline             ctermbg=8 ctermfg=7 cterm=underline
  hi htmlUnderlineItalic       ctermbg=8 ctermfg=7 cterm=underline,italic

endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

" Spellcheck formatting
if has("spell")
	hi SpellBad   guisp=#FC4234 gui=undercurl
	hi SpellCap   guisp=#70BDF1 gui=undercurl
	hi SpellLocal guisp=#FFEE68 gui=undercurl
	hi SpellRare  guisp=#6DF584 gui=undercurl
endif
