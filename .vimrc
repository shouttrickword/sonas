set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Tenable/vim-nasl'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on

function! FoldIt(thisline)
  if thisline[0] == "{"
    return 'a1'
  elseif thisline[0] == "}"
    return 's1'
  else
    return '='
  endif
endfunction

let nasl_space_errors = 1
autocmd BufNewFile,BufRead *.audit set syntax=xml
autocmd BufNewFile,BufRead *.nasl set filetype=nasl
autocmd BufNewFile,BufRead *.inc set filetype=nasl
autocmd BufNewFile,BufRead *.inc set indentexpr=
autocmd BufNewFile,BufRead *.nasl set foldmethod=marker
autocmd BufNewFile,BufRead *.nasl set foldmarker={,}

autocmd FileType nasl setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2 colorcolumn=120
