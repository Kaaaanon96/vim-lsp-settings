function! LspCheckCommand() abort
  let l:res = system('docker ps -q -f name="typescript-language-server"')
  if empty(l:res)
    return ''
  endif
  return 'typescript-language-server'
endfunction
