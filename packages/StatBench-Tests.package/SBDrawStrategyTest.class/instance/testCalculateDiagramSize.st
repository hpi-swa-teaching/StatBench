testing
testCalculateDiagramSize
	self strategy: SBBarStrategy new.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (0@500).
	self strategy calculateDiagramSize.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (100@500).
	
	self strategy: SBLineStrategy new.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (0@500).
	self strategy diagramProperties at: #domain put: {1 . 2 . 3 . 4} asOrderedCollection.
	self strategy calculateDiagramSize.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (240@500).
	
	self strategy: SBScatterStrategy new.
	self strategy diagramProperties at: #domain put: {1 . 2 . 3 . 4} asOrderedCollection.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (0@500).
	self strategy diagramProperties at: #colorValues put: {1 . 2 . 3 . 4} asOrderedCollection.
	self strategy calculateDiagramSize.
	self assert: (self strategy diagramProperties at: #diagramSize) equals: (512@500)
	