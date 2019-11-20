execute pathogen#infect()
syntax on
filetype plugin indent on

" enable highlighted search
set hlsearch

" enable pasting without indent
set paste

" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

"  change map <leader> from \ to ` ` (space)
:let mapleader = " "

" time out mappings after 1 second (1000) and key codes after 1/2 second (500)
set timeout timeoutlen=1000 ttimeoutlen=500

" Distinctively highlight the active window
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END


" Trying to break a very old habit...
" ex mode commands made easy
nnoremap ; :
nnoremap Q <nop>i

set tabstop=4                     " 4 spaces for a tab - used when vim opens a file having <tab>s in it
set shiftwidth=4                  " 4 spaces for autoindenting
set softtabstop=4                 " 4 spaces inserted for <tab> when editing a file, also # removed by backspace
set expandtab                     " expand tabs to spaces (overloadable by file type)

set laststatus=2                  " always show the status line
set cmdheight=2                   " and use a two-line tall status line
set showcmd                       " show the command
set noshowmode                    " don't show the mode, vim-airline will do that for us
set autoindent                    " turns it on
set smartindent                   " does the right thing (mostly) in programs
set linespace=3                   " prefer a slight higher line height
set linebreak                     " wrap intelligently, won't insert hard line breaks
set wrap                          " use line wrapping
set textwidth=79                  " at column 79
set ruler                         " display current cursor position
"set list                          " show invisible characters
"set listchars=tab:▸\ ,eol:¬,trail:⋅,nbsp:␣,extends:❯,precedes:❮
set showmatch                     " show matching brackets [{()}]
set number                        " except for the current line - absolute number there
set backspace=indent,eol,start    " make backspace behave in a sane manner
set mousehide                     " hide mouse when typing
set foldenable                    " enable code folding
set history=1000
set ffs=unix,mac,dos              " default file types
set autoread                      " automatically update file when editted outside of vim
if exists("&cryptmethod")
  set cryptmethod=blowfish        " Strong encryption is good
endif
set cursorline                    " highlight the line where the cursor is

" Relative Number and Number toggle
nnoremap <F10> :set relativenumber! number! number?<CR>

" Folding settings
set foldcolumn=3                  " room for fold markers
set foldmethod=marker             " use the standard 3 curly braces as markers

" Encoding anyone?
set termencoding=utf-8            " we like utf-8
set encoding=utf-8

" Setup automatic text formatting/wrapping (previously: grn1 )
set formatoptions=
set formatoptions-=t              " don't autowrap text
set formatoptions+=c              " do autowrap comments
set formatoptions+=r              " automatically continue comments
set formatoptions+=o              " automatically continue comments when hitting 'o' or 'O'
set formatoptions+=q              " allow formating of comments with 'gq'
set formatoptions+=n              " recognize numbered lists
set formatoptions+=l              " don't break long lines that were already there


map  <C-l> :tabn<CR>              " map next tab ctr + ;
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>


" Setup custom color scheme
set background=dark
set t_Co=256
colorscheme desert256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Hotkey to clear search highlighting
nmap <C-c> :let @/=""<cr><cr>
