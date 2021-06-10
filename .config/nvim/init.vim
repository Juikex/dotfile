let g:polyglot_disabled = ['markdown']

"vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'luochen1990/rainbow'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rakr/vim-one'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/lilydjwg/fcitx.vim.git'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

source $HOME/.config/nvim/color.vim

"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>' 

hi Normal guibg=NONE ctermbg=NONE

source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/rainbow.vim

autocmd CursorHold * silent call CocActionAsync('highlight')
let g:indentLine_color_term = 248
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

inoremap jj <Esc> "将jj映射到Esc

" 按 F5 执行当前代码"
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w" 
    if &filetype == 'python'
        exec "!python %"
    endif
endfunc

"打开上次位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:python_highlight_all = 1

let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

let g:mkdp_open_to_the_world = 1
