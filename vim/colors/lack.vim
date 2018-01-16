" Name Of File: lack.vim
"  Description: Gvim colorscheme
"   Maintainer: Thomas Lack
" Installation: Drop this file in your $VIMRUNTIME/colors/ directory
"               or manually source this file using ':so lack.vim'.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="lack"

hi Cursor guifg=#222429 ctermfg=235 guibg=#e3e3e3 ctermbg=254 gui=none cterm=none
hi CursorIM       gui=None            guibg=#add8e6    guifg=#000000
hi Directory      gui=None            guibg=bg         guifg=#20b2aa
hi DiffAdd guifg=#222429 ctermfg=235 guibg=#cbf8b0 ctermbg=193 gui=none cterm=none
hi DiffDelete guifg=#222429 ctermfg=235 guibg=#ffc0cb ctermbg=217 gui=none cterm=none
hi DiffChange guifg=#222429 ctermfg=235 guibg=#9cbddd ctermbg=110 gui=none cterm=none
hi DiffText guifg=#222429 ctermfg=235 guibg=#d0cffe ctermbg=189 gui=none cterm=none
hi ErrorMsg       gui=None            guibg=#b22222    guifg=#ffffe0
hi VertSplit guifg=#c7c7c7 ctermfg=251 guibg=#c7c7c7 ctermbg=251 gui=none cterm=none
hi Folded         gui=Bold            guibg=#003366    guifg=#999999
hi FoldColumn     gui=Bold            guibg=#305070    guifg=#b0d0e0
hi IncSearch      gui=Bold            guibg=#8db6cd    guifg=fg
hi LineNr         gui=Bold            guibg=#0f0f0f    guifg=#8db6cd
hi MoreMsg        gui=Bold            guibg=bg         guifg=#bf9261
hi ModeMsg        gui=Bold            guibg=bg         guifg=#4682b4
hi NonText        gui=None            guibg=#0f0f0f    guifg=#87cefa
hi Normal         gui=None            guibg=#000000    guifg=#e0ffff
"hi Normal guifg=#e3e3e3 ctermfg=254 guibg=#222429 ctermbg=235 gui=none cterm=none
hi Question       gui=Bold            guibg=bg         guifg=#f4bb7e
hi Search         gui=Bold            guibg=#607b8b    guifg=#000000
hi SpecialKey     gui=None            guibg=bg         guifg=#63b8ff
hi StatusLine     gui=Bold            guibg=#8db6cd    guifg=#000000
hi StatusLineNC   gui=None            guibg=#607b8b    guifg=#1a1a1a
hi Title          gui=Bold            guibg=bg         guifg=#5cacee
hi Visual guibg=#506681 ctermbg=60 gui=none cterm=none
hi VisualNOS guifg=#e3e3e3 ctermfg=254 guibg=#666666 ctermbg=241 gui=none cterm=none
hi WarningMsg     gui=Bold            guibg=bg         guifg=#b22222
hi WildMenu       gui=Bold            guibg=#607b8b    guifg=#000000
hi Comment        gui=None            guibg=#102520    guifg=#8db6cd
hi Constant       gui=None            guibg=bg         guifg=#c34a2c
hi Identifier     gui=None            guibg=bg         guifg=#009acd
hi Statement      gui=None            guibg=bg         guifg=#72a5ee
hi PreProc        gui=None            guibg=bg         guifg=#c12869
hi Include        gui=None            guibg=bg         guifg=#ccccff
hi Type           gui=None            guibg=bg         guifg=#3b9c9c
hi Error          gui=None            guibg=#b22222    guifg=#ffffe0
hi Todo           gui=None            guibg=#507080    guifg=#3bcccc
hi Ignore         gui=None            guibg=bg         guifg=#777777
hi TagName        gui=None            guibg=#660000    guifg=#a7a7a7

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine guibg=#3a3d45 ctermbg=237 gui=none cterm=none
    hi MatchParen guifg=#d0d0d0 ctermfg=45 guibg=#7ba5d8 ctermbg=8 gui=none cterm=none
    hi Pmenu guifg=#e3e3e3 ctermfg=254 guibg=#3a3d45 ctermbg=237 gui=none cterm=none
    hi PmenuSel guifg=#15171c ctermfg=233 guibg=#c7c7c7 ctermbg=251 gui=none cterm=none
    hi PmenuSbar guifg=#3a3d45 ctermfg=237 guibg=#3a3d45 ctermbg=237 gui=none cterm=none
    hi PmenuThumb guifg=#666666 ctermfg=241 guibg=#666666 ctermbg=241 gui=none cterm=none
endif
