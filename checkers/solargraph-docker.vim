function! LspCheckCommand() abort
  let l:res = system('docker ps -q -f name="solargraph"')
  if empty(l:res)
    return ''
  endif
  return 'solargraph'
endfunction
