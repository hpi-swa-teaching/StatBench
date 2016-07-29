testing
testCalculateDiagramSize
	self strategy: SBDrawStrategy new.
	self assert: self strategy diagramSize equals: 0@500.
	self strategy
		domain: { 1 . 2 . 3 . 4 };
		calculateDiagramSize.
	self assert: self strategy diagramSize equals: 240@500