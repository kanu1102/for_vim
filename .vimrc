
"---------------------------
"start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

"NERDTree
NeoBundle 'scrooloose/nerdtree'

"Autoclose
NeoBundle 'Townk/vim-autoclose'



call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
set cursorline
autocmd Vimenter * NERDTree ./
set number
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set hlsearch   " 検索文字列をハイライトする "
set mouse=a
syntax on
inoremap <C-c> <esc>
vnoremap <silent> <C-p> "0p<CR>
nnoremap <Space>. :<C-u>tabedit $MYVIMRC<CR>
set autoindent
au BufNewFile,BufRead *twig set filetype=html
