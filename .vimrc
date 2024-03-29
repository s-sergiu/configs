set nocompatible
set incsearch
set hlsearch
syntax on
set autoindent

"norm stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4

"colorscheme
color default

"laststatus
set laststatus=2
set statusline=%F         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\ %{strftime('%A-%H:%M')} " Time

"screen configs
set cursorline
hi CursorLine ctermfg=green
hi CursorLine ctermbg=black

"basic configs (line number + fuzzy search);
set nu
set rnu
set path+=**
set wildmenu

"disable netrw browser banner
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_winsize=80

"header settings
let g:user42 = 'ssergiu'
let g:mail42 = 'ssergiu@student.42heilbronn.de'

"statusline color highlighting
hi StatusLine ctermbg=yellow
hi StatusLine ctermfg=yellow
hi StatusLineNC ctermbg=cyan  
hi StatusLineNC ctermfg=blue

hi StatusLineTerm ctermbg=brown
hi StatusLineTerm ctermfg=yellow
hi StatusLineTermNC ctermbg=blue
hi StatusLineTermNC ctermfg=cyan

"parenthesis matching color highlight
hi MatchParen cterm=none ctermbg=143 ctermfg=20

"setting for ctags 
set cscopequickfix=s-,c-,d-,i-,t-,e-
set backspace=2
