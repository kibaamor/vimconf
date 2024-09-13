if (!(has("win32") || has("win64") || has("win95") || has("win16")))
    if (has("nvim"))
        if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
            silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif
    else
        if empty(glob('~/.vim/autoload/plug.vim'))
            silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif
    endif
endif


call plug#begin()

if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'nvie/vim-togglemouse'
Plug 'pbrisbin/vim-mkdir'

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'

if v:version >= 800
    Plug 'ervandew/supertab'
endif
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'

Plug 'preservim/nerdtree'

Plug 'Yggdroot/LeaderF'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

Plug 'fatih/vim-go'

if v:version >= 800
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'maralla/completor.vim'
endif

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()
