call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'posva/vim-vue'
Plug 'preservim/nerdtree'
Plug 'takac/vim-hardtime'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" Copilot TAB mapping
imap <silent><script><expr> <Tab> copilot#Accept(<Tab>)

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" FZF
function! FZFOpen(command_str)
  if (expand('%') =~# 'NERD_tree' && winnr('$') > 1)
    exe "normal! \<c-w>\<c-w>"
  endif
  exe 'normal! ' . a:command_str . "\<cr>"
endfunction

nnoremap <silent> <C-b> :call FZFOpen(':Buffers')<CR>
nnoremap <silent> <C-g>g :call FZFOpen(':Ag')<CR>
nnoremap <silent> <C-g>c :call FZFOpen(':Commands')<CR>
nnoremap <silent> <C-f> :call FZFOpen(':Ag')<CR>
nnoremap <silent> <C-p> :call FZFOpen(':Files')<CR>

let &t_ut=''

" Hardtime settings
let g:hardtime_default_on = 0
let g:hardtime_ignore_buffer_patterns = [ "NERD.*" ]

:colorscheme catppuccin
let g:lightline = {'colorscheme': 'catppuccin' }

set bg=dark
set encoding=UTF-8
set laststatus=2
set nu rnu
set relativenumber

abbreviate hma has_many_attached
abbreviate hm has_many 
abbreviate hoa has_one_attached
abbreviate dpd dependent: :destroy
