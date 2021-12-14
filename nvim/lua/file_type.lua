vim.cmd [[
    augroup configgroup
        autocmd!
        autocmd FileType xml setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType gradle.build setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab smartindent smarttab
        autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType java setlocal ts=4 sts=4 sw=4 expandtab smartindent smarttab
        autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab smartindent smarttab
        autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab smartindent smarttab
        autocmd FileType lua setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
        autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab smartindent smarttab
    augroup END
]]
