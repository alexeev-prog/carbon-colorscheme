syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomEB       "<="
syn match    cCustomES    	 ">="
syn match    cCustomEqual    "=="
syn match    cCustomNotEqual "!="
syn match    cCustomB    	 ">"
syn match    cCustomS    	 "<"
syn match    cCustomEq    	 "="
syn match    cCustomLink    	 "->"
syn match    COpenFigureBracket    	 "{"
syn match    CCloseFigureBracket    	 "}"
syn match    CCloseRoundStar    	 "*"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope

hi def cCustomFunc  gui=italic guifg=#7C9BC4
hi def cCustomClass gui=bold guifg=#7C9BC4
hi cCustomFunc  gui=italic guifg=#7C9BC4
hi cCustomClass gui=bold guifg=#7C9BC4

hi def COpenFigureBracket guifg=#89B7B0
hi def CCloseFigureBracket guifg=#89B7B0
hi COpenFigureBracket guifg=#89B7B0
hi CCloseFigureBracket guifg=#89B7B0
hi COpenRoundBracket guifg=#89B7B0
hi def CCloseRoundStar guifg=#89B7B0
hi CCloseRoundStar guifg=#89B7B0

hi def cCustomScope gui=bold guifg=#B883B2
hi cCustomScope gui=bold guifg=#B883B2
hi def cCustomEB guifg=#DC7171
hi def cCustomES guifg=#DC7171
hi def cCustomEq guifg=#DC7171
hi cCustomEq guifg=#DC7171
hi def cCustomEqual guifg=#DC7171
hi def cCustomNotEqual guifg=#DC7171
hi def cCustomB guifg=#DC7171
hi def cCustomS guifg=#DC7171
hi cCustomEB guifg=#DC717
hi def cCustomLink guifg=#DC7171
hi cCustomLink guifg=#DC71711
hi cCustomES guifg=#DC7171
hi cCustomEqual guifg=#DC7171
hi cCustomNotEqual guifg=#DC7171
hi cCustomB guifg=#DC7171
hi cCustomS guifg=#DC7171
