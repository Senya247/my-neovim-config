"run neoformat on save
"https://github.com/sbdchd/neoformat/issues/134#issuecomment-347180213
augroup fmt
  autocmd!
  au BufWritePre * try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
augroup END
