"Section 01 - Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required
"enable 256bit colors
if $TERM == "xterm-256color"
  set t_Co=256
endif
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



Plugin 'Valloric/YouCompleteMe'	"autocompletation
Plugin 'vim-syntastic/syntastic' "syntax checker
Plugin 'scrooloose/nerdtree' "directory tree
Plugin 'javier-lopez/sml.vim' "running sml out of vim
"Plugin 'rafi/awesome-vim-colorschemes' "varius colorschemes
"Plugin 'zcodes/vim-colors-basic' "colorscheme
"Plugin 'thewatts/wattslandia' "colorscheme
"Plugin 'lxmzhv/vim' "colorscheme
"Plugin 'altercation/vim-colors-solarized' "colorscheme
"Plugin 'jnurmine/Zenburn' "colorscheme
"Plugin 'ajh17/Spacegray.vim' "colorscheme
"Plugin 'hzchirs/vim-material' "colorscheme
Plugin 'sickill/vim-monokai' "colorscheme
Plugin 'lu-ren/SerialExperimentsLain' "colorscheme
Plugin 'altercation/vim-colors-solarized' "colorscheme
Plugin 'lifepillar/vim-solarized8' "colorscheme
"Plugin 'vim-latex/vim-latex'
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

"colorscheme SerialExperimentsLain
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
  colorscheme solarized8_dark_high
else
  "colorscheme SerialExperimentsLain
  colorscheme solarized8_dark_high
endif
"set nocompatible
set number
syntax on
set hls "activates highlightsearch -> :noh to stop highlighting


"Disable arrow keys:
nnoremap <up> 		<nop>
nnoremap <down>		<nop>
nnoremap <left>		<nop>
nnoremap <right>	<nop>

inoremap <up>		<nop>
inoremap <down>		<nop>
inoremap <left>		<nop>
inoremap <right>	<nop>

"enable yank to GUI
set clipboard=unnamedplus

"case-insensitive search
set ignorecase


set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


"better folding
set foldmethod=indent
set foldlevel=99
"enable folding with spacebar
nnoremap <space> za


"python indentation (PEP8):
au BufNewFile,BufRead *.py;
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"set encoding to utf8
set encoding=utf-8
"closes autocompletion window after being used
let g:ycm_autoclose_preview_window_after_completion=1

"let python_highlight_all=1 "what do you do?!?!



"the following settings can be used to generate helpfiles in case they are
"missing
"set rtp+=/usr/share/vim/vim80/doc

" Ensure that helptags are generated for the vim help directory
" This can create a new tag file for the docs. Consider the following steps:
" 1. change permissions of /usr/share/vim/vim80/doc and all subfolders to 777
" 2. start vim and check if helpfiles are available
" 3. after the tag-file is generated and the help files are working you can
"    change the folder permissions back
"let g:DocPath = expand("$VIMRUNTIME/doc")
"let g:DocTags = join([g:DocPath, "tags"], "/")
"if !filereadable(g:DocTags)
"    execute join(["helptags", g:DocPath])
"endif
"
