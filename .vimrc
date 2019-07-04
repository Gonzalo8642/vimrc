set shell=/bin/bash
"""""""""""""""""""""""
" Vundle vim manager  "
"""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vim closetag html autocomplete tag"
Plugin 'alvan/vim-closetag'
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

"""""" stuff """"""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""
" Auto completes "
inoremap " ""<left>
" '
inoremap ' ''<left>
" (
inoremap ( ()<left>
" [
inoremap [ []<left>
" {}
inoremap { {}<left>
" 
inoremap {<CR> {<CR>}<ESC>O
" {; -> 
inoremap {;<CR> {<CR>};<ESC>O

""""""""""""""""""""""""""""""""""
"  vim statusline plugin  
""""""""""""""""""""""""""""""""""
" Enables powerline in vim
set rtp+=/Users/gp/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set laststatus=2 " Always display the statusline in all windows
set noshowmode   " Hide the defualt mode text (e.g. -- INSERT -- below the statusline)
"set showtabline=2

""""""""""""""
" General    
""""""""""""""
" Set to auto read when a file is changed from the outside
set autoread
" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap
" Set number line
set number
""""""""""""""""
"  colors      
""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable desert colorscheme
try
    colorscheme desert
catch
endtry

"""""""""""""""""""
" Spell checking
"""""""""""""""""""
" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
"\sn  spellcheck next
map <leader>sn ]s
" \sp  spellcheck previous 
map <leader>sp [s
" \sa  spellcheck add to dictionary 
map <leader>sa zg
" \s?  Spellcheck suggestions
map <leader>s? z=

