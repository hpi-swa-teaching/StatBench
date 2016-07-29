testing
testCalculateMaxRange
	self assert: (self strategy diagramProperties at: #maxRange) equals: 1.
	self strategy diagramProperties at: #function put: (Dictionary newFrom: {
		3 -> { 7.5 } .
		8 -> { 10 } .
		15.5 -> { 17 } .
		22.554 -> { 20.554 } .
		30 -> { 23 } }).
	self strategy calculateMaxRange.
	self assert: (self strategy diagramProperties at: #maxRange) equals: 30