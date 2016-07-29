testing
testCalculateMaxRange
	self strategy: SBDrawStrategy new.
	self assert: self strategy maxRange equals: 1.
	self strategy diagramProperties at: #function put: (Dictionary newFrom: {
		3 -> { 7.5 } .
		8 -> { 10 } .
		15.5 -> { 17 } .
		22.554 -> { 20.554 } .
		30 -> { 23 } }).
	self strategy calculateMaxRange.
	self assert: self strategy maxRange equals: 30