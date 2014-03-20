"Vundle Part
set nocompatible               " be iMproved
filetype off                   " required!
"location of plugins
if has('win32')
	let vimfilespath="C:/vimfiles"
elseif has('unix')
	let vimfilespath="~/vimfiles"
endif
"location of the configuration

let &runtimepath=vimfilespath."/bundle,".$VIMRUNTIME

execute " set rtp+=".vimfilespath."/bundle/vundle"
call vundle#rc(vimfilespath."/bundle/")

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" git plugin
Bundle 'tpope/vim-fugitive'

"easymotion press <leader><leader>f/F/w/W/b/B to get a selectable motion
Bundle 'Lokaltog/vim-easymotion'

"singleCompile
Bundle 'xuhdev/SingleCompile'

"colorscheme
"taglist
Bundle "Tagbar"
"filebrowser
Bundle "scrooloose/nerdtree"
"commenter
Bundle "tComment"
"autocomplete Engine
Bundle 'Valloric/YouCompleteMe'
"parenthesis enhancement
Bundle 'kien/rainbow_parentheses.vim'

Bundle 'matlab.vim'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"my own part
syntax on
set nu
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set incsearch
set scrolloff=5
set title
set laststatus=2
set ruler
set showcmd
set backspace=
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set fileencoding=utf-8
set mouse=a
set matchpairs=<:>
set wildmenu 
set wildmode=list:longest,full
set gdefault
"set cursorline
set showcmd
"ycmcomplete 
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = {
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'text' : 1,
			\}
let g:ycm_filetype_specific_completion_to_disable = {}
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_allow_changing_updatetime = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_max_diagnostics_to_display = 30
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_global_ycm_extra_conf = vimfilespath.'/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_extra_conf_globlist = []
let g:ycm_filepath_completion_use_working_dir = 0
let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.'],
			\   'ocaml' : ['.', '#'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::'],
			\   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
			\   'ruby' : ['.', '::'],
			\   'lua' : ['.', ':'],
			\   'erlang' : [':'],
			\ }
let g:ycm_cache_omnifunc = 1


"easymotion
let g:EasyMotion_leader_key=','
"my own
"
"key bind
"press ctrl+x to close the file
nnoremap <C-x> <Esc> :q<CR>
"
"cancel search command
nmap<F2> :nohlsearch<CR>

"Debug and Build
"compile and run with the default setting
" map<F5> :call CompileRun()<CR>
 nmap <F4> :SCCompile<cr>
 nmap <F5> :SCCompileRun<cr>
"trigger taglist
nnoremap <silent> <F8> :TagbarToggle<CR>
"trigger NERDTree
nnoremap <silent> <F9> :NERDTreeToggle<CR>
"rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
