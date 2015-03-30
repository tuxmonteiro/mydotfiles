syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set ruler
set autoindent
" set list listchars=tab:\|_,trail:·,eol:¶
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/
execute pathogen#infect()
