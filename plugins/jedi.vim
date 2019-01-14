let PYTHON_PATH = ''
if has('python3')
    let PYTHON_PATH = system('which python3')
elseif has('python')
    let PYTHON_PATH = system('which python')
endif

let g:python_host_prog = PYTHON_PATH

autocmd FileType python setlocal completeopt-=preview
