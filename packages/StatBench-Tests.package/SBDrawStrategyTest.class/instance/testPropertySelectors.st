testing
testPropertySelectors
	| value |
	self strategy: SBBarStrategy new.
	self strategy diagramProperties keysDo: [ :property |
		value := 100 atRandom.
		self strategy diagramProperties at: property put: value.
		self assert: (self strategy perform: property) equals: value ].