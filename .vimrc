set rtp+=~/.vim
set nocompatible
set rtp+=~/.vim
execute pathogen#infect()
syntax on
set shiftwidth=4
set tabstop=4
set autoindent 
set number
set smarttab
set ignorecase "search ignorning case
set showmatch
set background=light " dark/light
colorscheme solarized

"javascript library syntax
let g:used_javascript_libs = 'react,jquery,requirejs,jasmine'

" linting
autocmd InsertLeave,BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" use local eslint if it exists
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" gitgutter settings
let g:gitgutter_realtime = 1  
let g:gitgutter_eager = 1
set updatetime=250

" Pane sizing and navigation
nnoremap ∆ <C-W><C-J>
nnoremap ˚ <C-W><C-K>
nnoremap ¬ <C-W><C-L>
nnoremap ˙ <C-W><C-H>
nnoremap  5<C-W><C-+>
nnoremap Ô 5<C-W><C-->
nnoremap Ó 5<C-W><C-<>
nnoremap Ò 5<C-W><C->>

"nnoremap <BS> <C-W>H
"map <tab><tab> <c-w><c-w>
"map <tab> <c-w>

nnoremap <C-=> <C-W><+>
nnoremap <C-_> <C-W><->
nnoremap <C-.> <C-W><>>
nnoremap <C-,> <C-W><<>

" easy move through tabs
nnoremap H gT
nnoremap L gt

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Use deoplete.
let g:deoplete#enable_at_startup = 1

if !exists('g:deoplete#omni#input_patterns')
	let g:deoplete#omni#input_patterns = {}
endif
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

autocmd FileType javascript setlocal omnifunc=tern#Complete

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"let g:tern_request_timeout = 1
"let g:tern#command = ["tern"]
"let g:tern#arguments = ["--persistent"]

"let g:tern_show_signature_in_pum = 0  " This do disable full signature type on autocomplete

" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
"let g:tern_show_signature_in_pum = 1
" call deoplete#enable_logging('DEBUG', 'deoplete.log')

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" color jsx in .js files as well as .jsx
let g:jsx_ext_required = 0

