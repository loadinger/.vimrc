set nocompatible

filetype off

filetype indent on

syntax enable

" set laststatus=2

" set ruler

set number

" set cursorline

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
" set wildmenu

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"Plugin 'vim-scripts/Solarized.git'

Plugin 'jiangmiao/auto-pairs'

Plugin 'scrooloose/nerdtree'

Plugin 'mattn/emmet-vim'


Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'dense-analysis/ale'

Plugin 'danilo-augusto/vim-afterglow'

Bundle 'jistr/vim-nerdtree-tabs'

call vundle#end()

set background=dark
" colorscheme solarized
colorscheme afterglow

map ,e :NERDTreeToggle<CR>
let NERDTreeWinSize=25

au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set tabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set softtabstop=2
au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set shiftwidth=2
au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set expandtab
au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set autoindent
au BufNewFile,BufRead *.html,*.js,*.vue,*.ts set fileformat=unix


au BufReadPost * if line("'\"") > 0|if line("'\"") <=line("$")|exe("norm '\"")|else|exe "norm$"|endif|endif 


autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufRead,BufNewFile *.ts setlocal filetype=javascript

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" let g:ale_set_highlights = 0
let g:ale_change_sign_column_color = 0
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'vue': ['eslint'],
\ }


function! g:ToggleNuMode() 
  if(&rnu == 1) 
    set nornu 
  else 
    set rnu 
  endif 
endfunc
nnoremap <C-L> :call g:ToggleNuMode()<cr>

let g:nerdtree_tabs_open_on_console_startup=1


