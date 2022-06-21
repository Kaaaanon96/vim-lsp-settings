function! LspCheckCommand() abort
  let l:res = system('docker ps -q -f name="volar"')
  if empty(l:res)
    return ''
  endif
  return 'volar'
endfunction
