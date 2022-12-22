" Installing plugins using vim-plug (plugin manager)
call plug#begin('~/.vim/externalPlugins')

Plug 'preservim/nerdcommenter'
Plug 'https://github.com/jiangmiao/auto-pairs.git'

call plug#end()

set tw=0                " Text wrap limit (0 means no wrap)
set tabstop=4           " Set tab width to 4 spaces
set shiftwidth=4        " Move 4 spaces when indenting with '>'

set number
set relativenumber
set hlsearch

syntax on

:inoremap jj <Esc>

" Mapping to save and run something in python
" (https://stackoverflow.com/a/18948530/3186279)
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Navigating the window splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
