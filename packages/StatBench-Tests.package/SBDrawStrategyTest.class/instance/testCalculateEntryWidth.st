testing
testCalculateEntryWidth
	self strategy: SBBarStrategy new.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 0.
	self strategy calculateEntryWidth.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 5.
	
	self strategy: SBLineStrategy new.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 0.
	self strategy calculateEntryWidth.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 5.
	
	self strategy: SBScatterStrategy new.
	self strategy diagramProperties at: #domain put: {1 . 2 . 3 . 4} asOrderedCollection.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 0.
	self strategy calculateEntryWidth.
	self assert: (self strategy diagramProperties at: #entryWidth) equals: 103
	