set makeprg=cmake\ --build\ --preset\ Debug
set makeef=build_error.log

function! project#GenTags()
  let l:options = ""

  " User can defined options in a global
  " list variable to assist ctags
  if exists("g:projectGenTagsOptions")
    let l:options = join(g:projectGenTagsOptions, " ")
  endif

  let l:cmd = "!ctags -R --exclude=build/ " . l:options

  execute l:cmd
endfunction

function! project#Configure()
  !cmake --preset Debug
endfunction

function! project#Test()
  !ctest --preset Debug
endfunction


