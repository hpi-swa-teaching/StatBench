testing
testGenerateColorForString
	| aColor1 aColor2 aColor3 |
	self strategy: SBScatterStrategy new.
	aColor1 := self strategy generateColorForString: 'HalloWelt'.
	aColor2 := self strategy generateColorForString: 'HalloWelt'.
	aColor3 := self strategy generateColorForString: 'Hallo' .
	self assert: aColor1 = (Color r: 1 g: 0.189 b: 0.279).
	self assert: aColor3 = (Color r: 0.937 g: 0.306 b: 0.059).
	self assert: aColor1 = aColor2.
	self deny: aColor1 = aColor3
	