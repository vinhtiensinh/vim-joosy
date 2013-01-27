function <SID>JsyPage()
  let currentFile = bufname('%')
  let pageFile = substitute(currentFile, '/templates/pages/', '/pages/', '')
  let pageFile = substitute(pageFile, '/templates/widgets/', '/widgets/', '')
  let pageFile = substitute(pageFile, '/templates/layouts/', '/layouts/', '')
  let pageFile = substitute(pageFile, '.jst.hamlc', '.js.coffee', '')
  let pageFile = ':o ' . pageFile . "\<CR>"
  echo pageFile
  call feedkeys(pageFile)
endfunction

function <SID>JsyTemplate()
  let currentFile = bufname('%')
  let pageFile = substitute(currentFile, '/pages/', '/templates/pages/', '')
  let pageFile = substitute(pageFile, '/widgets/', '/templates/widgets/', '')
  let pageFile = substitute(pageFile, '/layouts/', '/templates/layouts/', '')
  let pageFile = substitute(pageFile, '.js.coffee', '.jst.hamlc', '')
  echo pageFile
  let pageFile = ':o ' . pageFile . "\<CR>"
  call feedkeys(pageFile)
endfunction

command! JsyPage call <SID>JsyPage()
command! JsyTemplate call <SID>JsyTemplate()
