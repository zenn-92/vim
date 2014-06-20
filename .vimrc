""""""""""""""""FONT&CLIPBOARD""""""""""""""""
set clipboard=unnamed
set guifont=Monaco:h12

""""""""""""""""COLORSCHEME"""""""""""""""""""
set background=dark
colorscheme solarized
set t_Co=256 " использовать больше цветов в терминале

""""""""""""""""""""Кодировка"""""""""""""""""
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"""""""""""""""""SYSTEM"""""""""""""""""
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
set nu
set nocompatible
syntax on
filetype on
filetype plugin on
filetype plugin indent on
set wildmode=list,full
set visualbell " вместо писка бипером мигать курсором при ошибках ввода
set linebreak " разрыв строки
set wrap
set smartindent 
set autoindent
set hidden " не выгружать буфер когда переключаешься на другой
set mouse=a " включает поддержку мыши при работе в терминале (без GUI)
set mousehide " скрывать мышь в режиме ввода текста
set showcmd " показывать незавершенные команды в статусбаре (автодополнение ввода
set showmatch " показывать первую парную скобку после ввода второй
set autoread " перечитывать изменённые файлы автоматически
set title

"""""""""""""""""Поиск VIM"""""""""""""""""
set ignorecase " ics - поиск без учёта регистра символов
set smartcase " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set cursorline "Подсветка линии 
set nohlsearch " (не)подсветка результатов поиска (после того, как поиск закончен и закрытa)
set incsearch " поиск фрагмента по мере его набора
vnoremap <silent>* <ESC>:call VisualSearch()<CR>/<C-R>/<CR>
vnoremap <silent># <ESC>:call VisualSearch()<CR>?<C-R>/<CR>

""""""""""""" support languages""""""""""""""
augroup Less
    au BufNewFile,BufRead *.less set filetype=less
augroup END
""""""""""""""""""""""MD"""""""""""""""""""""
augroup markdown
    au BufNewFile,BufRead *.md set filetype=markdown
augroup END
""""""""""""""""""Backapps"""""""""""""""""""
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"""""""""""""""""Отступы"""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
""""""""""""Русские буквы""""""""""""""""""""""
nmap :ц :w
nmap :й :q
nmap :цй :wq
nmap й q
nmap ц w
nmap у e
nmap к r
nmap е t
nmap н y
nmap г u
nmap ш i
nmap щ o
nmap Щ O
nmap з p
nmap х [
nmap ъ ]
nmap ф a
nmap ы s
nmap в d
nmap а f
nmap п g
nmap р h
nmap о j
nmap л k
nmap д l
nmap ж :
nmap э '
nmap я z
nmap ч x
nmap с c
nmap м v
nmap и b
nmap т n
nmap ь m
nmap б ,
nmap ю .
nmap Х { 
nmap Ъ }
nmap Э "
nmap Б <
nmap Ю >
nmap й q

"""""""""""Замена ; на : """"""""""""""""""""""
nmap ; :

"""""""""""""""Enable omni completion"""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

""""""""""""""""""""Plugins""""""""""""""""""""
"""""""""""""""""NERDTree""""""""""""""""""""""
nmap <BS> :NERDTree<cr>
nmap <BS><BS> :NERDTreeClose<cr>
""""""""""""""""""Bundle"""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
""""""""""""""""""Powerline""""""""""""""""""""
set laststatus=2   " Always show the statusline"
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""PIV""""""""""""""""""""""""
let g:DisableAutoPHPFolding = 1
au FileType php set keywordprg=:help

""""""""""""""SuperTab""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<C-x><C-o>"

""""""""""""""""""Emmet""""""""""""""""""""""""""
imap <C-j> <c-y>,
vmap <C-j> <c-y>,
nmap <C-j> <c-y>,

imap <C-T> <C-X><C-O>
""""""""""""""""TAGLIST""""""""""""""""'"""""""'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Use_Right_Window   = 1
nnoremap <F3> :TlistToggle<CR>

"""""""""""""""Bundles"""""""""""""""""""""""""""

""""""""""""""""System"""""""""""""""""""""""""""
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'surround.vim'
Bundle 'ervandew/snipmate.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/ctrlp.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mattn/emmet-vim'

"""""""""""""""""Javascript"""""""""""""""""""""""
Bundle "jelera/vim-javascript-syntax"
Bundle "jQuery"

"""""""""""""""""""php""""""""""""""""""""""""""""
Bundle "spf13/PIV"
Bundle '2072/PHP-Indenting-for-VIm'

"""""""""""""""""Complition"""""""""""""""""""""""
Bundle 'ervandew/supertab'
Bundle "othree/html5.vim"
Bundle "scrooloose/syntastic"
Bundle "terryma/vim-multiple-cursors"
Bundle "tpope/vim-fugitive"
Bundle "AutoComplPop"
Bundle "AutoTag"
Bundle "taglist.vim"
