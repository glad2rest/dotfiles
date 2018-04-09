syntax on
set number
set relativenumber
set ruler laststatus=2 number title hlsearch

" autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')
	Plug 'tomasr/molokai'
call plug#end()

colorscheme molokai
