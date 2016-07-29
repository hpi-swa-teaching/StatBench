testing
testCalculateDiagramSize
	self strategy: (SBScatterStrategy newWith: { 1 . 2 . 3 }).
	self assert: self strategy diagramSize equals: 0@500.
	self strategy
		domain: { 1 . 2 . 3 . 4 };
		calculateDiagramSize.
	self assert: self strategy diagramSize equals: 512@500