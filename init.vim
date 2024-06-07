" Configuración básica de Neovim
set number                " Mostrar números de línea
set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf8
set showmatch
set sw=2
set laststatus=2
set tabstop=4             " Número de espacios en una tabulación
set shiftwidth=4          " Número de espacios para (auto)indentación
set expandtab             " Convertir tabulaciones en espacios
set smartindent           " Habilitar indentación inteligente
set cursorline            " Resaltar la línea del cursor
set background=dark       " Fondo oscuro
syntax enable                 " Habilitar resaltado de sintaxis

" Plugin Manager (por ejemplo, vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Ejemplo de plugins
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim' , { 'tag': '*', 'branch' : 'release' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sheerun/vim-polyglot' "Syntax
"Typing
Plug 'jiangmiao/auto-pairs'
"Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
"IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'eslint/eslint'
"Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
"Colapsar código
Plug 'tmhedberg/SimpylFold'
"Iconos
Plug 'ryanoasis/vim-devicons'


call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:deaplete#enable_at_startup = 1
let g:jsx_ext_required = 0

let mapleader=" "

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Configuración de Coc.nvim
let g:coc_global_extensions = ['coc-phpls']

" Mostrar archivos ocultos en NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1

"Mapeos de teclado
noremap <Leader>w :w<cr>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
noremap <Leader>d :NERDTreeToggle<cr>
noremap <Leader>tv :botright vnew <Bar> :terminal<cr>
noremap <Leader>th :botright new <Bar> :terminal<cr>
tnoremap <Esc> <C-\><C-n>
tnoremap <Leader><Esc><Esc> <C-\><C-n>:q<CR>

" Asignar atajo de teclado para buscar archivos
nnoremap <silent> <C-p> :Files<CR>

vnoremap <silent><Tab> :<C-u>execute 'silent!'.getline('.')<CR>
