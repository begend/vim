let mapleader=";"
nmap <Leader>v  <C-v>
set mouse= 
filetype on
filetype plugin on

" �����ݼ������׺���β
nmap LB 0
nmap LE $
" ���ÿ�ݼ���ѡ���ı��鸴����ϵͳ������
vnoremap <Leader>y "+y
" ���ÿ�ݼ���ϵͳ����������ճ���� vim
nmap <Leader>p "+p
" �����ݼ��رյ�ǰ�ָ��
nmap <Leader>q :q<CR>
" �����ݼ����浱ǰ��������
nmap <Leader>w :w<CR>
" �����ݼ��������д������ݲ��˳� vim
nmap <Leader>WQ :wa<CR>:q<CR>
" �����κα��棬ֱ���˳� vim
nmap <Leader>Q :qa!<CR>
" ���α����Ӵ���
nnoremap nw <C-W><C-W>
" ��ת���ҷ��Ĵ���
nnoremap <Leader>lw <C-W>l
" ��ת���󷽵Ĵ���
nnoremap <Leader>hw <C-W>h
" ��ת���Ϸ����Ӵ���
nnoremap <Leader>kw <C-W>k
" ��ת���·����Ӵ���
nnoremap <Leader>jw <C-W>j
" �����ݼ��ڽ�Է�֮����ת
nmap <Leader>M %

" �����ñ��������Ч
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ����ʵʱ��������
set incsearch
" ����ʱ��Сд������
set ignorecase
" �رռ���ģʽ
set nocompatible
" vim ����������ģʽ���ܲ�ȫ
set wildmenu


" vundle ��������
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle ����Ĳ���б����λ�� vundle#begin() �� vundle#end() ֮��
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS-Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'vim-scripts/OmniCppComplete'
Plugin 'Rip-Rip/clang_complete'
" ����б����
call vundle#end()
filetype plugin indent on

" ��ֹ�����˸
set gcr=a:block-blinkon0
" ��ֹ��ʾ������
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" ��ֹ��ʾ�˵��͹�����
set guioptions-=m
set guioptions-=T


" ���ⲿ���� wmctrl ���ƴ�����󻯵������в�����װ��һ�� vim �ĺ���
fun! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
" ȫ����/�ؿ�ݼ�
map <silent> <F11> :call ToggleFullscreen()<CR>
" ���� vim ʱ�Զ�ȫ��
autocmd VimEnter * call ToggleFullscreen()
set laststatus=2
" ��ʾ��굱ǰλ��
set ruler
" �����к���ʾ
set number
" ������ʾ��ǰ��/��
set cursorline
set cursorcolumn
" ������ʾ�������
set hlsearch

" ���� gvim ��ʾ����
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" ��ֹ����
set nowrap


" ����״̬��������
let g:Powerline_colorscheme='solarized256'

colorscheme default  
" �����﷨��������
syntax enable
" ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���
syntax on
syntax keyword cppSTLtype initializer_list


" ����Ӧ��ͬ���Ե���������
filetype indent on
" ���Ʊ����չΪ�ո�
set expandtab
" ���ñ༭ʱ�Ʊ��ռ�ÿո���
set tabstop=4
" ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4
" �� vim �����������Ŀո���Ϊһ���Ʊ��
set softtabstop=4

" �� vim ������
let g:indent_guides_enable_on_vim_startup=1
" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2
" ɫ����
let g:indent_guides_guide_size=1
" ��ݼ� i ��/���������ӻ�
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


"set fileencodings=utf-8,gbk
set fileencodings=gbk,utf-8

"set encoding=utf-8
set encoding=gbk
"set fileencodings=utf-8,gbk,gb18030,big5,cp936
set fileencodings=gbk,utf-8,gb18030,big5,cp936
let &termencoding=&encoding
set langmenu=zh_CN.UTF-8


" *.cpp �� *.h ���л�
nmap <silent> <Leader>sw :FSHere<cr>

" ���� tagbar �Ӵ��ڵ�λ�ó��������༭������� 
let tagbar_left=1 
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ����ټǣ�identifier list by tag
nnoremap <Leader>tl :TagbarToggle<CR> 
" ���ñ�ǩ�Ӵ��ڵĿ�� 
let tagbar_width=32 
" tagbar �Ӵ����в���ʾ���������Ϣ 
let g:tagbar_compact=1
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

" �������ͬ����ǩ
nmap <Leader>tn :tnext<CR>
" �������ͬ����ǩ
nmap <Leader>tp :tprevious<CR>

"f.vim ����ڹ�����ȫ�ֲ��ҹ�����ڹؼ��֣����ÿ�ݼ�����ݼ��ټǷ���search in project
"search string in project
nnoremap <Leader>sp :CtrlSF<CR>

" ʹ�� NERDTree ����鿴�����ļ������ÿ�ݼ����ټǣ�file list
nmap <Leader>fl :NERDTreeToggle<CR>
" ����NERDTree�Ӵ��ڿ��
let NERDTreeWinSize=32
" ����NERDTree�Ӵ���λ��
let NERDTreeWinPos="right"
" ��ʾ�����ļ�
let NERDTreeShowHidden=1
" NERDTree �Ӵ����в���ʾ���������Ϣ
let NERDTreeMinimalUI=1
" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeDirArrows=0

" ��ʾ/���� MiniBufExplorer ����
map <Leader>bl :MBEToggle<cr>

" buffer �л���ݼ�
map <Leader>bn :MBEbn<cr>
map <Leader>bp :MBEbp<cr>

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" �ظ���һ�β���, ����repeat���, ��ǿ��
map <Leader><leader>. <Plug>(easymotion-repeat)

"ctrlp

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']

let  g:clang_library_path = '/home/work/.jumbo/lib/llvm/libclang.so'
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libstdc++ -std=c++11 -I'
let g:clang_debug = 1
"let g:clang_user_options='|| exit 0'
let g:clang_complete_auto = 1
let g:clang_complete_copen=1
let g:clang_omnicppcomplete_compliance=0
let g:clang_make_default_keymappings=1
"g:indexer_disableCtagsWarning=1
