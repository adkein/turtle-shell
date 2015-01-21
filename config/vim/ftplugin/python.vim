setlocal shiftwidth=4 softtabstop=4 tabstop=4
nnoremap <leader>hoy :highlight OverLength ctermbg=red ctermfg=white guibg=#592929<cr> <bar> :match Overlength /\%81v.\+/<cr>
nnoremap <leader>hon :highlight OverLength NONE <bar> :match Overlength /\%81v.\+/<cr>
