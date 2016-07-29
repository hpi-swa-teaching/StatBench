testing
testGenerateColorForString
	| aColor1 aColor2 aColor3 |
	self strategy: SBScatterStrategy new.
	aColor1 := self strategy generateColorForString: 'HalloWelt'.
	aColor2 := self strategy generateColorForString: 'HalloWelt'.
	aColor3 := self strategy generateColorForString: 'Hallo' .
	self
		assert: aColor1 equals: aColor2;
		deny: aColor1 = aColor3