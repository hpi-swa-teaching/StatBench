testing
testCalculateEntryWidth
	self strategy: (SBScatterStrategy newWith: { 1 }).
	self strategy
		domain: { 1 };
		calculateEntryWidth.
	self assert: self strategy entryWidth equals: 410