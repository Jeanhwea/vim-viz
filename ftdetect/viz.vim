if has('autocmd')
    augroup ftdetect_viz
        autocmd!
        autocmd BufNewFile,BufRead *.viz setfiletype viz
    augroup END
end
