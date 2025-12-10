set makeprg=cmake\ --build\ --preset\ Debug

function! project#GenTags()
  !ctags -R --exclude=build
endfunction

function! project#Configure()
  !cmake --preset Debug
endfunction

function! project#Test()
  !ctest --preset Debug
endfunction


