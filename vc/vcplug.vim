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


if (has("nvim"))
    call plug#begin('~/.local/share/nvim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

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
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'

Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'

Plug 'preservim/nerdtree',
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Yggdroot/LeaderF',

Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'

Plug 'ryanoasis/vim-devicons'

call plug#end()
