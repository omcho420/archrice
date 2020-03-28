let mapleader =","

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "downloading plugin manager"
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kovetskiy/sxhkd-vim'
call plug#end()

set bg=light

" sets a theme
	 autocmd VimEnter * AirlineTheme angr

" basic mapping:
	filetype plugin on
	syntax on
	set encoding=utf-8
" auto completion
	set wildmode=longest,list,full

" auto commenting off
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" nerd-tree
	map <leader>n :NERDTreeToggle<CR>

" updates binds
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd
" xrdb
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" highlight stuff
if &diff
	highlight! link DiffText MatchParen
endif
