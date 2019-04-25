set tabstop=2
set shiftwidth=2 smarttab
set softtabstop=0 noexpandtab

command Rtmp %s/\(\/\*@\*\/\)\([!-?]\|[A-~]\|\_s\)*\1//g
command Cppi read ~/.vim/templates/cpp/init

set number
set nowrap
set encoding=utf-8
set relativenumber	

autocmd BufNewFile *.cpp 0r ~/jonatas/padrao.cpp

