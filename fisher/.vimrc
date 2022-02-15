"### copy from jimmy ###
"# last modified 2022-02-15

" Set default text encoding
"set encoding=utf-8

" Enable 256 colors
set t_Co=256

" Turn on syntax highlighting
syntax on

" Folding by indent
set foldmethod=indent

" Set dark background as default color scheme
set background=dark
hi Normal     term=NONE cterm=NONE ctermfg=NONE ctermbg=Black guifg=White guibg=Black gui=NONE
" Set dark mode color tone
hi Comment    term=bold cterm=NONE ctermfg=Blue ctermbg=NONE gui=NONE guifg=#6060ff guibg=NONE
hi Constant   term=underline cterm=NONE ctermfg=Red ctermbg=NONE gui=NONE guifg=#ff0000 guibg=NONE
hi Special    term=bold cterm=bold ctermfg=208 ctermbg=NONE gui=bold guifg=Orange guibg=NONE
hi Identifier term=underline cterm=bold ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#00ffff guibg=NONE
hi Statement  term=bold cterm=bold ctermfg=Yellow ctermbg=NONE gui=bold guifg=#ffff00 guibg=NONE
hi PreProc    term=underline cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=#ff00ff guibg=NONE
hi Type       term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=#008000 guibg=NONE
hi Underlined term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=#8b008b
hi Ignore     term=NONE cterm=NONE ctermfg=Black ctermbg=NONE gui=NONE guifg=bg guibg=NONE
" Set vimdiff color tone
hi DiffAdd    cterm=bold ctermfg=Green ctermbg=17 gui=bold guifg=#00ff00 guibg=#000080
hi DiffDelete cterm=bold ctermfg=Green ctermbg=17 gui=bold guifg=#00ff00 guibg=#000080
hi DiffChange cterm=bold ctermfg=Green ctermbg=17 gui=bold guifg=#00ff00 guibg=#000080
hi DiffText   cterm=bold ctermfg=Yellow ctermbg=88 gui=bold guifg=#ffff00 guibg=#800000

" Set current cursor line style
set cursorline
hi cursorline cterm=NONE ctermbg=235

" Set numbers line 
set nu
hi LineNr ctermfg=grey

" scrolloff
set scrolloff=4

" Replace tabs with spaces
set expandtab
set smarttab

" Make tab 2 spaces
set tabstop=2
set shiftwidth=2

" Make tab 2 spaces by default for all file types
autocmd FileType * set tabstop=2
autocmd FileType * set shiftwidth=2

" Shift+Tab unindents a line
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" Visual mode tab/untab identation
vmap <S-Tab> <gv
vmap <Tab> >gv

" Auto add {} () '' ...
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap {<CR> {<CR>}<Esc>ko

" Keep code block indentation level when I press enter
set autoindent

" Turn on command line tab autocompletion (file path) like bash completion
set wildmenu
set wildmode=list:longest

"set mouse=a      " 點擊超連結,複製貼上用visual模式 y p
set history=200   " 保留 200 個歷史指令
set incsearch     " 輸入搜尋同時 highlighting

" Set column 80 vertical line highlighting
" Consider simplify my logic when I across this line
set colorcolumn=80
hi ColorColumn ctermbg=52
" Need to turn off color column sometimes
" Ctrl+M to toggle column 80 highlighting
nnoremap <C-M> :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR> :set autoindent! autoindent?<CR>

" Set search highlighting
"set hlsearch!   "off
set hlsearch   "on
" Ctrl+L to clean up search highlighting
nnoremap <C-L> :nohlsearch<CR><C-L>
