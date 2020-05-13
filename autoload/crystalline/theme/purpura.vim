function! crystalline#theme#purpura#set_theme() abort
  call crystalline#generate_theme({
        \ 'NormalMode':  [[253, 93], ['#D4D4D4', '#7e21ff']],
        \ 'InsertMode':  [[235, 53],  ['#1e0030', '#53cf51']],
        \ 'VisualMode':  [[235, 53], ['#1e0030', '#ecc440']],
        \ 'ReplaceMode': [[253, 203], ['#D4D4D4', '#EC4067']],
        \ '':            [[253, 54], ['#D4D4D4', '#390359']],
        \ 'Inactive':    [[235, 53], ['#200133', '#D4D4D4']],
        \ 'Fill':        [[253, 92], ['#D4D4D4', '#4e1470']],
        \ 'Tab':         [[253, 54], ['#D4D4D4', '#390359']],
        \ 'TabType':     [[235, 53], ['#D4D4D4', '#d900ff']],
        \ 'TabSel':      [[253, 93], ['#D4D4D4', '#7e21ff']],
        \ 'TabFill':     [[253, 92], ['#D4D4D4', '#4e1470']],
        \ })
endfunction

" vim:set et sw=2 ts=2 fdm=marker:
