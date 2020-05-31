scriptencoding utf-8

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="purpura"

if &t_Co >= 256
    let g:purpura_term256=1
elseif !exists("g:purpura_term256")
    let g:purpura_term256=0
endif
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . (g:purpura_term256 ? a:fg.cterm256 : a:fg.cterm)
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . (g:purpura_term256 ? a:bg.cterm256 : a:bg.cterm)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
  endif
endfun

" Transparent background
let g:purpura_tans = get(g:, 'purpura_tans', 1)
if g:purpura_tans == 1
  hi Normal ctermbg=NONE guibg=NONE
  hi NonText ctermbg=NONE guibg=NONE
  hi CursorLineNr ctermbg=NONE guibg=NONE
  hi LineNr ctermbg=NONE guibg=#690da1 guifg=#690da1 
  hi EndOfBuffer ctermbg=NONE guibg=NONE
  hi SignColumn	ctermbg=NONE guibg=NONE
endif

" ------------------
" Color definitions:
" ------------------
"
" General appearance colors:
" (some of them may be unused)

let s:cdNone = {'gui': 'NONE', 'cterm': 'NONE', 'cterm256': 'NONE'}
let s:cdFront = {'gui': '#f0f0f0', 'cterm': 'NONE', 'cterm256': '255'}
let s:cdBack = {'gui': '#1e0030', 'cterm': 'NONE', 'cterm256': '54'}

let s:cdTabCurrent = {'gui': '#5e0066', 'cterm': 'NONE', 'cterm256': '53'}
let s:cdTabOther = {'gui': '#1e0030', 'cterm': 'NONE', 'cterm256': '54'}
let s:cdTabOutside = {'gui': '#1e0030', 'cterm': 'NONE', 'cterm256': '54'}

let s:cdLeftDark = {'gui': '#1e0030', 'cterm': 'NONE', 'cterm256': '54'}
let s:cdLeftMid = {'gui': '#1e0030', 'cterm': 'NONE', 'cterm256': '54'}
let s:cdLeftLight = {'gui': '#ff00ff', 'cterm': 'NONE', 'cterm256': '201'}

let s:cdPopupFront = {'gui': '#BBBBBB', 'cterm': 'NONE', 'cterm256': '250'}
let s:cdPopupBack = {'gui': '#610369', 'cterm': 'NONE', 'cterm256': '53'}
let s:cdPopupHighlightBlue = {'gui': '#1f0121', 'cterm': 'NONE', 'cterm256': '54'}
let s:cdPopupHighlightGray = {'gui': '#610369', 'cterm': 'NONE', 'cterm256': '53'}

let s:cdSplitLight = {'gui': '#898989', 'cterm': 'NONE', 'cterm256': '245'}
let s:cdSplitDark = {'gui': '#444444', 'cterm': 'NONE', 'cterm256': '238'}
let s:cdSplitThumb = {'gui': '#424242', 'cterm': 'NONE', 'cterm256': '238'}

let s:cdCursorDarkDark = {'gui': '#25003d', 'cterm': 'NONE', 'cterm256': '54'}
let s:cdCursorDark = {'gui': '#51504F', 'cterm': 'NONE', 'cterm256': '239'}
let s:cdCursorLight = {'gui': '#AEAFAD', 'cterm': 'NONE', 'cterm256': '145'}
let s:cdSelection = {'gui': '#471469', 'cterm': 'NONE', 'cterm256': '55'}
let s:cdLineNumber = {'gui': '#480275', 'cterm': 'NONE', 'cterm256': '55'}

let s:cdDiffRedDark = {'gui': '#4B1818', 'cterm': 'NONE', 'cterm256': '52'}
let s:cdDiffRedLight = {'gui': '#6F1313', 'cterm': 'NONE', 'cterm256': '52'}
let s:cdDiffRedLightLight = {'gui': '#FB0101', 'cterm': 'NONE', 'cterm256': '09'}
let s:cdDiffGreenDark = {'gui': '#373D29', 'cterm': 'NONE', 'cterm256': '237'}
let s:cdDiffGreenLight = {'gui': '#4B5632', 'cterm': 'NONE', 'cterm256': '85'}

let s:cdSearchCurrent = {'gui': '#ffec8c', 'cterm': 'NONE', 'cterm256': '228'}
let s:cdSearch = {'gui': '#9f44db', 'cterm': 'NONE', 'cterm256': '134'}

" Syntax colors:

if !exists("g:purpura_conservative")
    let g:purpura_conservative=0
endif

let s:cdGray = {'gui': '#808080', 'cterm': 'NONE', 'cterm256': '08'}
let s:cdDarkBlue = {'gui': '#223E55', 'cterm': 'NONE', 'cterm256': '73'}
let s:cdLightBlue = {'gui': '#73bbf5', 'cterm': 'NONE', 'cterm256': '111'}
if g:purpura_conservative | let s:cdLightBlue = s:cdFront | endif
let s:cdViolet = {'gui': '#8924c9', 'cterm': 'NONE', 'cterm256': '92'}
let s:cdPinkGreen = {'gui': '#acff59', 'cterm': 'NONE', 'cterm256': '155'}
let s:cdLightGreen = {'gui': '#B5CEA8', 'cterm': 'NONE', 'cterm256': '151'}
let s:cdRed = {'gui': '#F44747', 'cterm': 'NONE', 'cterm256': '203'}
let s:cdLightYellow = {'gui': '#ede093', 'cterm': 'NONE', 'cterm256': '186'}
let s:cdLightRed = {'gui': '#D16969', 'cterm': 'NONE', 'cterm256': '167'}
if g:purpura_conservative | let s:cdLightRed = s:cdLightYellow | endif
let s:cdVeryLightGreenOrange = {'gui': '#D7BA7D', 'cterm': 'NONE', 'cterm256': '179'}
let s:cdVeryLightGreen = {'gui': '#ffc363', 'cterm': 'NONE', 'cterm256': '215'}
if g:purpura_conservative | let s:cdVeryLightGreen = s:cdFront | endif
let s:cdPink = {'gui': '#ff00d4', 'cterm': 'NONE', 'cterm256': '200'}
if g:purpura_conservative | let s:cdPink = s:cdPink | endif

" Vim editor colors
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:cdFront, s:cdBack, 'none', {})
call <sid>hi('ColorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Cursor', s:cdCursorDark, s:cdCursorLight, 'none', {})
call <sid>hi('CursorLine', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('CursorColumn', {}, s:cdCursorDarkDark, 'none', {})
call <sid>hi('Directory', s:cdPink, s:cdBack, 'none', {})
call <sid>hi('DiffAdd', {}, s:cdDiffGreenDark, 'none', {})
call <sid>hi('DiffChange', {}, s:cdDiffRedDark, 'none', {})
call <sid>hi('DiffDelete', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('DiffText', {}, s:cdDiffRedLight, 'none', {})
call <sid>hi('EndOfBuffer', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('ErrorMsg', s:cdRed, s:cdBack, 'none', {})
call <sid>hi('VertSplit', s:cdSplitDark, s:cdBack, 'none', {})
call <sid>hi('Folded', s:cdLeftLight, s:cdLeftDark, 'underline', {})
call <sid>hi('FoldColumn', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('SignColumn', {}, s:cdBack, 'none', {})
call <sid>hi('IncSearch', s:cdNone, s:cdSearchCurrent, 'none', {})
call <sid>hi('LineNr', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('CursorLineNr', s:cdPopupFront, s:cdBack, 'none', {})
call <sid>hi('MatchParen', s:cdNone, s:cdCursorDark, 'none', {})
call <sid>hi('ModeMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('MoreMsg', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('NonText', s:cdLineNumber, s:cdBack, 'none', {})
call <sid>hi('Pmenu', s:cdPopupFront, s:cdPopupBack, 'none', {})
call <sid>hi('PmenuSel', s:cdPopupFront, s:cdPopupHighlightBlue, 'none', {})
call <sid>hi('PmenuSbar', {}, s:cdPopupHighlightGray, 'none', {})
call <sid>hi('PmenuThumb', {}, s:cdPopupFront, 'none', {})
call <sid>hi('Question', s:cdPink, s:cdBack, 'none', {})
call <sid>hi('Search', s:cdNone, s:cdSearch, 'none', {})
call <sid>hi('SpecialKey', s:cdPink, s:cdNone, 'none', {})
call <sid>hi('SpellBad', s:cdNone, s:cdNone, 'undercurl', {})
call <sid>hi('SpellCap', s:cdNone, s:cdNone, 'undercurl', {})
call <sid>hi('SpellLocal', s:cdNone, s:cdNone, 'undercurl', {})
call <sid>hi('StatusLine', s:cdFront, s:cdLeftMid, 'none', {})
call <sid>hi('StatusLineNC', s:cdFront, s:cdLeftDark, 'none', {})
call <sid>hi('TabLine', s:cdFront, s:cdTabOther, 'none', {})
call <sid>hi('TabLineFill', s:cdFront, s:cdTabOutside, 'none', {})
call <sid>hi('TabLineSel', s:cdFront, s:cdTabCurrent, 'none', {})
call <sid>hi('Title', s:cdNone, s:cdNone, 'bold', {})
call <sid>hi('Visual', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('VisualNOS', s:cdNone, s:cdSelection, 'none', {})
call <sid>hi('WarningMsg', s:cdLightYellow, s:cdBack, 'none', {})
call <sid>hi('WildMenu', s:cdNone, s:cdSelection, 'none', {})

call <sid>hi('Comment', s:cdViolet, {}, 'bold', {})

call <sid>hi('Constant', s:cdPink, {}, 'none', {})
call <sid>hi('String', s:cdLightYellow, {}, 'none', {})
call <sid>hi('Character', s:cdLightYellow, {}, 'none', {})
call <sid>hi('Number', s:cdLightGreen, {}, 'none', {})
call <sid>hi('Boolean', s:cdPink, {}, 'none', {})
call <sid>hi('Float', s:cdLightGreen, {}, 'none', {})

call <sid>hi('Identifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('Function', s:cdVeryLightGreen, {}, 'none', {})

call <sid>hi('Statement', s:cdPink, {}, 'none', {})
call <sid>hi('Conditional', s:cdPink, {}, 'none', {})
call <sid>hi('Repeat', s:cdPink, {}, 'none', {})
call <sid>hi('Label', s:cdPink, {}, 'none', {})
call <sid>hi('Operator', s:cdFront, {}, 'none', {})
call <sid>hi('Keyword', s:cdPink, {}, 'none', {})
call <sid>hi('Exception', s:cdPink, {}, 'none', {})

call <sid>hi('PreProc', s:cdPink, {}, 'none', {})
call <sid>hi('Include', s:cdPink, {}, 'none', {})
call <sid>hi('Define', s:cdPink, {}, 'none', {})
call <sid>hi('Macro', s:cdPink, {}, 'none', {})
call <sid>hi('PreCondit', s:cdPink, {}, 'none', {})

call <sid>hi('Type', s:cdPink, {}, 'none', {})
call <sid>hi('StorageClass', s:cdPink, {}, 'none', {})
call <sid>hi('Structure', s:cdPink, {}, 'none', {})
call <sid>hi('Typedef', s:cdPink, {}, 'none', {})

call <sid>hi('Special', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialChar', s:cdFront, {}, 'none', {})
call <sid>hi('Tag', s:cdFront, {}, 'none', {})
call <sid>hi('Delimiter', s:cdFront, {}, 'none', {})
call <sid>hi('SpecialComment', s:cdViolet, {}, 'none', {})
call <sid>hi('Debug', s:cdFront, {}, 'none', {})

call <sid>hi('Underlined', s:cdNone, {}, 'underline', {})
call <sid>hi("Conceal", s:cdFront, s:cdBack, 'none', {})

call <sid>hi('Ignore', s:cdFront, {}, 'none', {})

call <sid>hi('Error', s:cdRed, s:cdBack, 'undercurl', s:cdRed)

call <sid>hi('Todo', s:cdNone, s:cdLeftMid, 'none', {})

" Markdown:
call <sid>hi('markdownBold', s:cdPink, {}, 'bold', {})
call <sid>hi('markdownCode', s:cdLightYellow, {}, 'none', {})
call <sid>hi('markdownRule', s:cdPink, {}, 'bold', {})
call <sid>hi('markdownCodeDelimiter', s:cdLightYellow, {}, 'none', {})
call <sid>hi('markdownHeadingDelimiter', s:cdPink, {}, 'none', {})
call <sid>hi('markdownFootnote', s:cdLightYellow, {}, 'none', {})
call <sid>hi('markdownFootnoteDefinition', s:cdLightYellow, {}, 'none', {})
call <sid>hi('markdownUrl', s:cdLightBlue, {}, 'underline', {})
call <sid>hi('markdownLinkText', s:cdLightYellow, {}, 'none', {})
call <sid>hi('markdownEscape', s:cdVeryLightGreenOrange, {}, 'none', {})

" JSON:
call <sid>hi('jsonKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsonEscape', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('jsonNull', s:cdPink, {}, 'none', {})
call <sid>hi('jsonBoolean', s:cdPink, {}, 'none', {})

" HTML:
call <sid>hi('htmlTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlEndTag', s:cdGray, {}, 'none', {})
call <sid>hi('htmlTagName', s:cdPink, {}, 'none', {})
call <sid>hi('htmlSpecialTagName', s:cdPink, {}, 'none', {})
call <sid>hi('htmlArg', s:cdLightBlue, {}, 'none', {})

" CSS:
call <sid>hi('cssBraces', s:cdFront, {}, 'none', {})
call <sid>hi('cssInclude', s:cdPink, {}, 'none', {})
call <sid>hi('cssTagName', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssClassName', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssPseudoClass', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassId', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssPseudoClassLang', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssIdentifier', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('cssProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssDefinition', s:cdLightBlue, {}, 'none', {})
call <sid>hi('cssAttr', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssAttrRegion', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssColor', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssFunction', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssFunctionName', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssVendor', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssValueNumber', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssValueLength', s:cdLightYellow, {}, 'none', {})
call <sid>hi('cssUnitDecorators', s:cdLightYellow, {}, 'none', {})

" JavaScript:
call <sid>hi('jsVariableDef', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsFuncArgs', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsRegexpString', s:cdLightRed, {}, 'none', {})
call <sid>hi('jsThis', s:cdPink, {}, 'none', {})
call <sid>hi('jsOperatorKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('jsDestructuringBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsObjectKey', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsGlobalObjects', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('jsModuleKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsClassDefinition', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('jsClassKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('jsExtendsKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('jsExportDefault', s:cdPink, {}, 'none', {})
call <sid>hi('jsFuncCall', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('jsObjectValue', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('jsObjectProp', s:cdLightBlue, {}, 'none', {})

" Typescript:
call <sid>hi('typescriptLabel', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptExceptions', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptBraces', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptEndColons', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParens', s:cdFront, {}, 'none', {})
call <sid>hi('typescriptDocTags', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptDocComment', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptLogicSymbols', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptImport', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptBOM', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptVariableDeclaration', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptVariable', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptExport', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptAliasDeclaration', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptAliasKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptClassName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptAccessibilityModifier', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptOperator', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptArrowFunc', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptMethodAccessor', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptMember', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('typescriptTypeReference', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSB', s:cdVeryLightGreenOrange, {}, 'none', {})
call <sid>hi('typescriptArrowFuncArg', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParamImpl', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncComma', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptCastKeyword', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptCall', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptCase', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptReserved', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptDefault', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptDecorator', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('typescriptPredefinedType', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptClassHeritage', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptClassExtends', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptClassKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptDOMDocProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTemplateSubstitution', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptClassBlock', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptFuncCallArg', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptIndexExpr', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptConditionalParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptArray', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('typescriptES6SetProp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptObjectLiteral', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptTypeParameter', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptEnumKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptEnum', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptLoopParen', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptParenExp', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdLightBlue, {}, 'none', {})
call <sid>hi('typescriptAmbientDeclaration', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptModule', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptFuncTypeArrow', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptInterfaceHeritage', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptInterfaceKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptInterfaceExtends', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptGlobal', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('typescriptAsyncFuncKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptFuncKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('typescriptGlobalMethod', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('typescriptPromiseMethod', s:cdVeryLightGreen, {}, 'none', {})

" XML:
call <sid>hi('xmlTag', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('xmlTagName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('xmlEndTag', s:cdPinkGreen, {}, 'none', {})

" Ruby:
call <sid>hi('rubyClassNameTag', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('rubyClassName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('rubyModuleName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('rubyConstant', s:cdPinkGreen, {}, 'none', {})

" Golang:
call <sid>hi('goPackage', s:cdPink, {}, 'none', {})
call <sid>hi('goImport', s:cdPink, {}, 'none', {})
call <sid>hi('goVar', s:cdPink, {}, 'none', {})
call <sid>hi('goConst', s:cdPink, {}, 'none', {})
call <sid>hi('goStatement', s:cdPink, {}, 'none', {})
call <sid>hi('goType', s:cdPink, {}, 'none', {})
call <sid>hi('goSignedInts', s:cdPink, {}, 'none', {})
call <sid>hi('goUnsignedInts', s:cdPink, {}, 'none', {})
call <sid>hi('goFloats', s:cdPink, {}, 'none', {})
call <sid>hi('goComplexes', s:cdPink, {}, 'none', {})
call <sid>hi('goBuiltins', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('goBoolean', s:cdPink, {}, 'none', {})
call <sid>hi('goPredefinedIdentifiers', s:cdPink, {}, 'none', {})
call <sid>hi('goTodo', s:cdViolet, {}, 'none', {})
call <sid>hi('goDeclaration', s:cdPink, {}, 'none', {})
call <sid>hi('goDeclType', s:cdPink, {}, 'none', {})
call <sid>hi('goTypeDecl', s:cdPink, {}, 'none', {})
call <sid>hi('goTypeName', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('goVarAssign', s:cdLightBlue, {}, 'none', {})
call <sid>hi('goVarDefs', s:cdLightBlue, {}, 'none', {})
call <sid>hi('goReceiver', s:cdFront, {}, 'none', {})
call <sid>hi('goReceiverType', s:cdDarkBlue, {}, 'none', {})
call <sid>hi('goFunctionCall', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('goMethodCall', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('goSingleDecl', s:cdLightBlue, {}, 'none', {})

" Python:
call <sid>hi('pythonStatement', s:cdPink, {}, 'none', {})
call <sid>hi('pythonOperator', s:cdPink, {}, 'none', {})
call <sid>hi('pythonException', s:cdPink, {}, 'none', {})
call <sid>hi('pythonExClass', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('pythonBuiltinObj', s:cdLightBlue, {}, 'none', {})
call <sid>hi('pythonBuiltinType', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('pythonBoolean', s:cdPink, {}, 'none', {})
call <sid>hi('pythonNone', s:cdPink, {}, 'none', {})
call <sid>hi('pythonTodo', s:cdPink, {}, 'none', {})
call <sid>hi('pythonClassVar', s:cdPink, {}, 'none', {})
call <sid>hi('pythonClassDef', s:cdPinkGreen, {}, 'none', {})

" TeX:
call <sid>hi('texStatement', s:cdPink, {}, 'none', {})
call <sid>hi('texBeginEnd', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('texBeginEndName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texOption', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texBeginEndModifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('texDocType', s:cdPink, {}, 'none', {})
call <sid>hi('texDocTypeArgs', s:cdLightBlue, {}, 'none', {})

" Git:
call <sid>hi('gitcommitHeader', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitOnBranch', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitBranch', s:cdPink, {}, 'none', {})
call <sid>hi('gitcommitComment', s:cdGray, {}, 'none', {})
call <sid>hi('gitcommitSelectedType', s:cdViolet, {}, 'none', {})
call <sid>hi('gitcommitSelectedFile', s:cdViolet, {}, 'none', {})
call <sid>hi('gitcommitDiscardedType', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitDiscardedFile', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitOverflow', s:cdRed, {}, 'none', {})
call <sid>hi('gitcommitSummary', s:cdPink, {}, 'none', {})
call <sid>hi('gitcommitBlank', s:cdPink, {}, 'none', {})

" Lua:
call <sid>hi('luaFuncCall', s:cdVeryLightGreen, {}, 'none', {})
call <sid>hi('luaFuncArgName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('luaFuncKeyword', s:cdPink, {}, 'none', {})
call <sid>hi('luaLocal', s:cdPink, {}, 'none', {})
call <sid>hi('luaBuiltIn', s:cdPink, {}, 'none', {})

" Rust:
call <sid>hi('rustAttribute', s:cdPinkGreen, {}, 'none', {})
call <sid>hi('rustFuncName', s:cdLightBlue, {}, 'none', {})
call <sid>hi('rustIdentifier', s:cdLightBlue, {}, 'none', {})
call <sid>hi('rustType', s:cdPinkGreen, {}, 'none', {})
