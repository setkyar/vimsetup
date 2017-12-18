set nocompatible              		"We want the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable
colorscheme atom-dark-256

set backspace=indent,eol,start		"Make backspace	behave like every other editor.
let mapleader = ','			"The default leader is \, but a comma is much better.
set number				"Let's activate line numbers.
set linespace=25			"Macvim-specific line-height.


"------------Visuals----------------"
colorscheme atom-dark-256


"------------Search----------------"
set hlsearch
set incsearch


"------------Split Management----------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"------------Mappings----------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"------------Auto-Commands----------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
