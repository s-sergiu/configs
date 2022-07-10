set nocompatible
syntax on

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
let g:netrw_liststyle=3
let g:netrw_winsize=20


"gruvbox config
call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

"remaps
set termwinkey=<C-L>

nnoremap <S-Tab> <C-W><C-W>
tnoremap <S-Tab> <C-L>W
nnoremap <Tab> gt
