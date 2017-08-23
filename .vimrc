"Section 01 - Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'oinksoft/vim-sml'
Plugin 'javier-lopez/sml.vim'
Plugin 'rafi/awesome-vim-colorschemes'
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

"set nocompatible
set number
colorscheme afterglow
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

set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

