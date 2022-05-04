" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

:let g:NERDTreeWinSize=20 " cap width of window
":let g:NERDTreeDirArrowExpandable="►"
":let g:NERDTreeDirArrowCollapsible="▼"


" May 4 2022: Using ChADtree instead.
" nvm, using NERDTree better
" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
 nnoremap <C-t> :NERDTreeToggle<CR>
