augroup vim_lsp_settings_solargraph_docker
  au!
  LspRegisterServer {
      \ 'name': 'solargraph-docker',
      \ 'tcp': {server_info->lsp_settings#get('solargraph-docker', 'tcp', '127.0.0.1:7658')},
      \ 'root_uri':{server_info->lsp_settings#get('solargraph-docker', 'root_uri', lsp_settings#root_uri('solargraph'))},
      \ 'initialization_options': lsp_settings#get('solargraph', 'initialization_options', {'diagnostics': 'true'}),
      \ 'allowlist': lsp_settings#get('solargraph', 'allowlist', ['ruby']),
      \ 'blocklist': lsp_settings#get('solargraph', 'blocklist', []),
      \ 'config': lsp_settings#get('solargraph', 'config', lsp_settings#server_config('solargraph')),
      \ 'workspace_config': lsp_settings#get('solargraph', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('solargraph', 'semantic_highlight', {}),
      \ }
augroup END
