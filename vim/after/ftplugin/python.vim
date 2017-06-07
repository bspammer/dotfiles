nnoremap <silent> <buffer> ]] :call <SID>Python_jump('/^\(class\\|def\)')<cr>zz
nnoremap <silent> <buffer> [[ :call <SID>Python_jump('?^\(class\\|def\)')<cr>zz
nnoremap <silent> <buffer> ]m :call <SID>Python_jump('/^\s*\(class\\|def\)')<cr>zz
nnoremap <silent> <buffer> [m :call <SID>Python_jump('?^\s*\(class\\|def\)')<cr>zz

if !exists('*<SID>Python_jump')
  fun! <SID>Python_jump(motion) range
      let cnt = v:count1
      let save = @/    " save last search pattern
      mark '
      while cnt > 0
      silent! exe a:motion
      let cnt = cnt - 1
      endwhile
      call histdel('/', -1)
      let @/ = save    " restore last search pattern
  endfun
endif
