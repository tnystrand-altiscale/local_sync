" Syntax highlightning
syntax enable
hi Search guibg=Red

set hlsearch
set incsearch

" Regular tab columns
set tabstop=4

" Shift with >> and << as well as auto C indent
set shiftwidth=4

" Insert mode tab is replaced by spaces
set expandtab

" Set to less than tabstop to combine spaces and tab
set softtabstop=4

" Show hidden characters
set list

" Show tab characters as >-------
set listchars=tab:>-

" Automatically indent next line when pressing enter
set autoindent

" Try to match file type when automatically indenting
set smartindent

" Use tabs only for indent
set smarttab

" Show other side of braces
set showmatch

" Cursor will not jump around between different lines
set nostartofline

" Screen start scrolling when 10 rows from bottom or top
set scrolloff=10

" Show cursor postiion
set ruler

" Cursor has a line
set cursorline

" Allows filetype specific plugin and indent
filetype plugin indent on
