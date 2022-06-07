" Installing plugins using vim-plug (plugin manager)
call plug#begin('~/.vim/externalPlugins')

Plug 'preservim/nerdcommenter'
Plug 'https://github.com/jiangmiao/auto-pairs.git'

call plug#end()

set tw=0

set number
set relativenumber

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
