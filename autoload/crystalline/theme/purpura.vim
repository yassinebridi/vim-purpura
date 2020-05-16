function! crystalline#theme#purpura#set_theme() abort
  call crystalline#generate_theme({
        \ 'NormalMode':  [[188, 93], ['#D4D4D4', '#7e21ff']],
        \ 'InsertMode':  [[54, 77],  ['#1e0030', '#53cf51']],
        \ 'VisualMode':  [[54, 220], ['#1e0030', '#ecc440']],
        \ 'ReplaceMode': [[188, 167], ['#D4D4D4', '#EC4067']],
        \ '':            [[188, 55], ['#D4D4D4', '#390359']],
        \ 'Inactive':    [[54, 188], ['#200133', '#D4D4D4']],
        \ 'Fill':        [[188, 55], ['#D4D4D4', '#4e1470']],
        \ 'Tab':         [[188, 55], ['#D4D4D4', '#390359']],
        \ 'TabType':     [[188, 165], ['#D4D4D4', '#d900ff']],
        \ 'TabSel':      [[188, 93], ['#D4D4D4', '#7e21ff']],
        \ 'TabFill':     [[188, 55], ['#D4D4D4', '#4e1470']],
        \ })
endfunction

" vim:set et sw=2 ts=2 fdm=marker:
