scriptencoding utf-8

let g:airline#themes#purpura#palette = {}

if &t_Co >= 256
    let g:purpura_term256=1
elseif !exists("g:purpura_term256")
    let g:purpura_term256=0
endif

let s:cdFront = {'gui': '#D4D4D4', 'cterm':  (g:purpura_term256 ? '188' : 'none')}
let s:cdFrontGray = {'gui': '#D4D4D4', 'cterm': (g:purpura_term256 ? '188' : 'none')}
let s:cdBack = {'gui': '#1e0030', 'cterm': (g:purpura_term256 ? '54' : 'none')}
let s:cdSelection = {'gui': '#471469', 'cterm': (g:purpura_term256 ? '55' : 'none')}

let s:cdBlue = {'gui': '#7e21ff', 'cterm': (g:purpura_term256 ? '93' : 'none')}
let s:cdYellow = {'gui': '#ecc440', 'cterm': (g:purpura_term256 ? '220' : 'none')}
let s:cdGreen = {'gui': '#53cf51', 'cterm': (g:purpura_term256 ? '77' : 'none')}
let s:cdRed = {'gui': '#EC4067', 'cterm': (g:purpura_term256 ? '167' : 'none')}

let s:cdDarkDarkDark = {'gui': '#390359', 'cterm': (g:purpura_term256 ? '55' : 'none')}
let s:cdDarkDark = {'gui': '#5e0791', 'cterm': (g:purpura_term256 ? '55' : 'none')}
let s:cdDark = {'gui': '#7b18b5', 'cterm': (g:purpura_term256 ? '134' : 'none')}

let s:Warning = [ s:cdRed.gui, s:cdDarkDark.gui, s:cdRed.cterm, s:cdDarkDark.cterm, 'none']

" Normal:

let s:N1 = [ s:cdFront.gui, s:cdBlue.gui, s:cdFront.cterm, s:cdBlue.cterm, 'none' ]
let s:N2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:N3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:NM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#purpura#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#purpura#palette.normal_modified = { 'airline_c': s:NM }
let g:airline#themes#purpura#palette.normal.airline_warning = s:Warning
let g:airline#themes#purpura#palette.normal_modified.airline_warning = s:Warning

" Insert:

let s:I1 = [ s:cdBack.gui, s:cdGreen.gui, s:cdBack.cterm, s:cdGreen.cterm, 'none' ]
let s:I2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:I3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:IM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#purpura#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#purpura#palette.insert_modified = { 'airline_c': s:IM }
let g:airline#themes#purpura#palette.insert.airline_warning = s:Warning
let g:airline#themes#purpura#palette.insert_modified.airline_warning = s:Warning

" Replace:

let s:R1 = [ s:cdFront.gui, s:cdRed.gui, s:cdFront.cterm, s:cdRed.cterm, 'none' ]
let s:R2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:R3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:RM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#purpura#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#purpura#palette.replace_modified = { 'airline_c': s:RM }
let g:airline#themes#purpura#palette.replace.airline_warning = s:Warning
let g:airline#themes#purpura#palette.replace_modified.airline_warning = s:Warning

" Visual:

let s:V1 = [ s:cdBack.gui, s:cdYellow.gui, s:cdBack.cterm, s:cdYellow.cterm, 'none' ]
let s:V2 = [ s:cdFront.gui, s:cdDarkDark.gui, s:cdFront.cterm, s:cdDarkDark.cterm, 'none' ]
let s:V3 = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:VM = [ s:cdFront.gui, s:cdDarkDarkDark.gui, s:cdFront.cterm, s:cdDarkDarkDark.cterm, 'none']

let g:airline#themes#purpura#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#purpura#palette.visual_modified = { 'airline_c': s:VM }
let g:airline#themes#purpura#palette.visual.airline_warning = s:Warning
let g:airline#themes#purpura#palette.visual_modified.airline_warning = s:Warning

" Inactive:

let s:IA1 = [ s:cdFrontGray.gui, s:cdDark.gui, s:cdFrontGray.cterm, s:cdDark.cterm, 'none' ]
let s:IA2 = [ s:cdFrontGray.gui, s:cdDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDark.cterm, 'none' ]
let s:IA3 = [ s:cdFrontGray.gui, s:cdDarkDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDarkDark.cterm, 'none' ]
let s:IAM = [ s:cdFrontGray.gui, s:cdDarkDarkDark.gui, s:cdFrontGray.cterm, s:cdDarkDarkDark.cterm, 'none' ]

let g:airline#themes#purpura#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#purpura#palette.inactive_modified = { 'airline_c': s:IAM }

" Red accent for readonly:

let g:airline#themes#purpura#palette.accents = {
      \ 'red': [ s:cdRed.gui, '', s:cdRed.cterm, '' ]
      \ }
