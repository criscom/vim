" Criscom's runtime configuration settings for VIM
" created: 20170812

" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" From http://nerditya.com/code/guide-to-neovim/
" Map the leader key to SPACE
" let mapleader="\<SPACE>"
let mapleader = " "

set showcmd           " Show (partial) command in status line.
set showmatch         " Show matching brackets.
set showmode          " Show current mode.
set ruler             " Show the line and column numbers of the cursor.

set number            " Show the line numbers on the left side.
set numberwidth=5

set backspace=2       " Backspace deletes like most programs in insert mode.
set formatoptions+=o  " Continue comment marker in new lines.
set textwidth=0       " Hard-wrap long lines as you type them.
set expandtab         " Insert spaces when TAB is pressed.
set tabstop=2         " Render TABs using this many spaces.
" set autoindent        " always set autoindenting
set shiftwidth=2      " Indentation amount for < and > commands.
set shiftround
set expandtab
set history=50
set ruler             " Show the cursor postion all the time
set incsearch         " Do incremental searching
set laststatus=2      " Always display the status line

set autowrite         " Automatically :write before running commands

set noerrorbells      " No beeps.
set modeline          " Enable modeline.

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" set color scheme
syntax enable
set background=dark
colorscheme solarized

" set the font to be used in VIM
" set guifont=Menlo:h18

" open VIM with a given size
" set lines=35 columns=150

" add a colored column at 90 to avoid going too far to the right

" set colorcolumn=90

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines.
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  endif
  set list  " Show problematic characters

  " Also highlight all tabs and trailing whitespace characters.
  highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
  match ExtraWhitespace /\s\+$\|\t/

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align' " https://github.com/junegunn/vim-easy-align
" Initialize plugin system
call plug#end()

" Vim easy align
"
" Start interactive EasyAlign in visual mode (e.g. vipa)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

