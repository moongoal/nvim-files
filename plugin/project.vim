set makeprg=cmake\ --build\ --preset\ Debug
set makeef=build_error.log

function! project#GenTags()
  !ctags
endfunction

function! project#Configure()
  !cmake --preset Debug
endfunction

function! project#Test()
  !ctest --preset Debug
endfunction


