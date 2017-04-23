set nocompatible " not vi compatible

"--------------
" Load pathogen
"--------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"--------------
" Load sensible
"--------------
runtime! plugin/sensible.vim

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

" vim can autodetect this based on $TERM (e.g. 'xterm-256color')
" but it can be set to force 256 colors
" set t_Co=256
if has('gui_running')
    colorscheme solarized
elseif &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    set background=dark
    let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:NeatStatusLine_color_normal='ctermfg=64 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_insert='ctermfg=136 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_replace='ctermfg=160 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_visual='ctermfg=33 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_position='ctermfg=245 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_modified='ctermfg=166 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_line='ctermfg=61 ctermbg=235 cterm=bold'
    let g:NeatStatusLine_color_filetype='ctermfg=37 ctermbg=235 cterm=bold'
endif

"---------------------
" Basic editing config
"---------------------
set nu " number lines
set hls " highlight search
set listchars=tab:>>,nbsp:~ " set list to see tabs and non-breakable spaces
set lbr " line break
set scrolloff=5 " show lines above and below cursor (when possible)
set lazyredraw " skip redrawing screen in some cases
set autochdir " automatically set current directory to directory of last opened file
set nojoinspaces " suppress inserting two spaces between sentences
" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"---------------
" Set status bar
"---------------
set statusline=s%{fugitive#statusline()}

"---------------------
" Local customizations
"---------------------
" local customizations in ~/.vimrc_local
let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif
