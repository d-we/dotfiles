set exrc

"Section 01 - Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required
"enable 256bit colors
if $TERM == "xterm-256color" "TODO: double check this if I need screen-256color aswell
  set t_Co=256
endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:powerline_pycmd = 'py3' " needed for powerline
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



Plugin 'Valloric/YouCompleteMe'	"autocompletation
Plugin 'vim-syntastic/syntastic' "syntax checker
Plugin 'scrooloose/nerdtree' "directory tree
Plugin 'udalov/kotlin-vim' "kotlin syntax highlighting
Plugin 'morhetz/gruvbox' " color scheme gruvbox
"Plugin 'javier-lopez/sml.vim' "running sml out of vim
"Plugin 'rafi/awesome-vim-colorschemes' "varius colorschemes # IF GOTHMAM BUGS ENABLE THIS AGAIN
Plugin 'whatyouhide/vim-gotham' "gotham scheme test
Plugin 'lervag/vimtex' "latex 
"Plugins for python:
Plugin 'aperezdc/vim-template' "allows to create templates for filetypes (:help template.txt)
Plugin 'tmhedberg/SimpylFold' "better folgding. press 'za' to fold || changed za to spacebar
Plugin 'vim-scripts/indentpython.vim' "better indentation for python
Plugin 'tpope/vim-fugitive' "git support 
"Plugin 'jistr/vim-nerdtree-tabs' "nertree tabs

" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"#######################
"#######################
"#######################

"Section 02 - Settings for Syntastic

"    set statusline+=%#warningmsg#
"    set statusline+=%{SyntasticStatuslineFlag()}
"    set statusline+=%*
"
"    let g:syntastic_always_populate_loc_list = 1
"    let g:syntastic_auto_loc_list = 1
"    let g:syntastic_check_on_open = 1
"    let g:syntastic_check_on_wq = 1 

"#######################
"#######################
"#######################

"Section 03 - Powerline
set  rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"#######################
"#######################
"#######################
"Section 04 - Everything else
"
if has('gui_running') "if using gvim then switch colorscheme and remove buttons
  set background=dark
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guifont=hack "sets font for gui (needed for powerline)
  "colorscheme atom
  colorscheme gotham
else
  "colorscheme delek
  "colorscheme gotham256 " changed commentcolor from blue to base4 for readability
  colorscheme gruvbox
endif
"set nocompatible
set number
syntax on
set hls "activates highlightsearch -> :noh to stop highlighting

"Nicer syntax highlighting for asm files
au BufRead,BufNewFile *.asm set filetype=nasm
au BufRead,BufNewFile *.nasm set filetype=nasm
"Build & run asm file
au BufRead,BufNewFile *.asm command Run  !clear && nasm -f elf64 % && ld %:r.o -o %:r && ./%:r
au BufRead,BufNewFile *.nasm command Run !clear && nasm -f elf64 % && ld %:r.o -o %:r && ./%:r
"Build & attach radare to file
au BufRead,BufNewFile *.asm command Debug !clear && nasm -f elf64 % 
			\ && ld %:r.o -o %:r && r2 -d %:r
au BufRead,BufNewFile *.nasm command Debug !clear && nasm -f elf64 % 
			\ && ld %:r.o -o %:r && r2 -d %:r

au BufRead,BufNewFile *.asm command Run32  !clear && nasm % && ld %:r.o -o %:r && ./%:r
au BufRead,BufNewFile *.nasm command Run32 !clear && nasm % && ld %:r.o -o %:r && ./%:r
"Build & attach radare to file
au BufRead,BufNewFile *.asm command Debug32 !clear && nasm % 
			\ && ld %:r.o -o %:r && r2 -d %:r
au BufRead,BufNewFile *.nasm command Debug32 !clear && nasm % 
			\ && ld %:r.o -o %:r && r2 -d %:r

"Disable arrow keys:
nnoremap <up> 		<nop>
nnoremap <down>		<nop>
nnoremap <left>		<nop>
nnoremap <right>	<nop>

inoremap <up>		<nop>
inoremap <down>		<nop>
inoremap <left>		<nop>
inoremap <right>	<nop>

"map j/k to gj/gk for better navigation on wrapped lines (e.g. useful on TeX)
nnoremap j gj
nnoremap k gk
"enable yank to GUI
set clipboard^=unnamedplus,unnamed

"case-insensitive search
set ignorecase


set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


"better folding
set foldmethod=indent
set foldlevel=99
"enable folding with spacebar
nnoremap <space> za


"general indentation setting (2 spaces instead of tab)
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab "change tab to spaces

"python indentation (PEP8):
au BufNewFile,BufRead *.py;
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"makefile indendation (needs real tabs or build will fail)
au FileType make;
  \ set tabstop=4
  \ set shiftwidth=4
  \ set softtabstop=0
  \ set noexpandtab

"set encoding to utf8
set encoding=utf-8
"closes autocompletion window after being used
let g:ycm_autoclose_preview_window_after_completion=1
"maps the autocorrection to F9
map <F9> :YcmCompleter FixIt<CR>

"let python_highlight_all=1 "what do you do?!?!

set colorcolumn=100 " will highlight 100. column (nice for detecting too long lines)
highlight ColorColumn ctermbg=240
" will change background color to dark gray
"hi Normal ctermbg=233  "testing
hi Normal ctermbg=NONE  "testing

" mouse support
if has("mouse")
  set mouse=a
endif

" jump to last cursor position (requires viminfo file)
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" run python files
autocmd FileType python map <F10> :!clear && python2 %<CR>

