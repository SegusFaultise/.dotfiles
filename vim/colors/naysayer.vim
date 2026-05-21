" Naysayer colorscheme for Vim
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "naysayer"

" Core UI
hi Normal guifg=#d0b892 guibg=#062625
hi Cursor guibg=#ffffff
hi Visual guibg=#0000ff
hi LineNr guifg=#126367 guibg=#062625
hi CursorLineNr guifg=#ffffff guibg=#062625
hi CursorLine guibg=#0b3335
hi ColorColumn guibg=#0b3335
hi VertSplit guifg=#126367
hi MatchParen guibg=#0000ff
hi SignColumn guibg=#062625 ctermbg=NONE

" Syntax
hi Comment guifg=#53d549 gui=bold cterm=bold
hi String guifg=#3ad0b5
hi Number guifg=#87ffde gui=bold cterm=bold
hi Boolean guifg=#87ffde
hi Constant guifg=#87ffde gui=bold cterm=bold
hi Identifier guifg=#d0b892
hi Function guifg=#d0b892
hi Statement guifg=#ffffff gui=bold cterm=bold
hi Keyword guifg=#ffffff
hi Type guifg=#8cde94 gui=bold cterm=bold
hi PreProc guifg=#8cde94 gui=bold cterm=bold
hi Special guifg=#FD971F
hi WarningMsg guifg=#ffdfba
hi Error guifg=#ff9aa2 guibg=NONE ctermbg=NONE

" Diagnostics / LSP
hi DiagnosticError guifg=#ff9aa2
hi DiagnosticWarn guifg=#ffdfba
" Rainbow delimiters (optional)
hi rainbowcol1 guifg=#AE81FF
hi rainbowcol2 guifg=#66D9EF
hi rainbowcol3 guifg=#A6E22E
hi rainbowcol4 guifg=#E6DB74
hi rainbowcol5 guifg=#FD971F
hi rainbowcol6 guifg=#F92672

" Statusline integration
hi StatusLine guifg=#12251b guibg=#062625
hi StatusLineNC guifg=#126367 guibg=#062625

" Link LSP virtual text to your existing diagnostic colors
hi! link LspDiagnosticsVirtualTextError DiagnosticError
hi! link LspDiagnosticsVirtualTextWarning DiagnosticWarn
hi! link LspDiagnosticsVirtualTextInformation DiagnosticInfo
hi! link LspDiagnosticsVirtualTextHint DiagnosticHint

" Autocomplete Popup Menu
hi Pmenu guifg=#d0b892 guibg=#0b3335 ctermbg=NONE
hi PmenuSel guifg=#ffffff guibg=#0000ff ctermbg=NONE
hi PmenuSbar guibg=#062625 ctermbg=NONE
hi PmenuThumb guibg=#126367 ctermbg=NONE

" Ensure generic errors do not draw harsh backgrounds
hi Error guibg=NONE ctermbg=NONE
