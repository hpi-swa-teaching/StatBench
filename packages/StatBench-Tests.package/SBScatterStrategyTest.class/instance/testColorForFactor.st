testing
testColorForFactor
	| color string |
	string := 'HalloWelt'.
	color := self strategy generateColorForString: string.
	self
		assert: (self strategy colorForFactor: string) equals: color;
		deny: (self strategy colorForFactor: string, 'a') = color
	