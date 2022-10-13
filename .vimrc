set nocompatible
set incsearch
set hlsearch
syntax on

"norm stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent

"colorscheme
color torte

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

"remaps
set termwinkey=<C-L>
nnoremap <S-Tab> <C-W><S-W>
tnoremap <S-Tab> <C-L><S-W>
nnoremap <Tab> gt

let g:user42 = 'ssergiu'
let g:mail42 = 'ssergiu@student.42heilbronn.de'

hi StatusLine ctermbg=cyan
hi StatusLine ctermfg=24
hi StatusLineNC ctermbg=24  
hi StatusLineNC ctermfg=white

hi StatusLineTerm ctermbg=cyan
hi StatusLineTerm ctermfg=24
hi StatusLineTermNC ctermbg=24
hi StatusLineTermNC ctermfg=white
