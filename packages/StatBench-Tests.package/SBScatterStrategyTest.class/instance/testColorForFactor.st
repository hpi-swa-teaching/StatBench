testing
testColorForFactor
	| aColor |
	aColor := self strategy generateColorForString: 'HalloWelt'.
	self assert: (self strategy colorForFactor: 'HalloWelt') equals: aColor
	