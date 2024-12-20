" signify {{
" default updatetime 4000ms is not good for async update
set updatetime=100
" }}


" colorscheme {{
syntax on
try
    colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
    " deal with it
endtry
" }}


" airline {{
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" }}


" rainbow {{
let g:rainbow_active = 1
" }}


" EasyAlign {{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" }}


" NERDTree {{
let g:NERDTreeShowHidden = 1
nmap <F9> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}


" https://github.com/Yggdroot/LeaderF/blob/master/doc/leaderf.txt
" Leaderf {{
" install ripgrep(https://github.com/BurntSushi/ripgrep) for use rg
let g:Lf_ShortcutF = '<c-\>'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PopupColorscheme = 'onedark'
let g:Lf_StlColorscheme = 'onedark'
let g:Lf_PreviewResult = { 'Rg': 1 }
let g:Lf_RgConfig = [
    \ "--glob=!git/*",
    \ "--glob=!**/tags",
    \ "--hidden"
    \ ]
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf rg --all-buffers -S -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf rg -S -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -S -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

let g:Lf_GtagsAutoGenerate = 0
let g:Lf_GtagsGutentags = 1
let g:Lf_CacheDirectory = expand('$HOME/.cache')

noremap <C-G>      :<C-U>Leaderf gtags --by-context --auto-jump<CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
" }}


" https://zhuanlan.zhihu.com/p/36279445
" vim-gutentags {{
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/LeaderF/gtags')

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

let g:gutentags_auto_add_gtags_cscope = 0

let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
" }}


" https://github.com/skywind3000/gutentags_plus
" gutentags_plus {{
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" <leader>cg - view define
" <leader>cs - view references
" <leader>cc - view which functions call this function
" <leader>cf - find files under current cursor
" <leader>ci - find which files include this file
" }}


" vim-go {{
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
" }}


" easymotion {{
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Space>   <Plug>(easymotion-bd-w)
nmap <Space>   <Plug>(easymotion-overwin-w)
map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)
" }}


" incsearch {{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" }}
