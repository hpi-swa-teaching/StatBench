testing
testGenerateColorForString
	| color1 color2 color3 |
	self strategy: SBScatterStrategy new.
	color1 := self strategy generateColorForString: 'HalloWelt'.
	color2 := self strategy generateColorForString: 'HalloWelt'.
	color3 := self strategy generateColorForString: 'Hallo' .
	self
		assert: color1 equals: color2;
		deny: color1 = color3