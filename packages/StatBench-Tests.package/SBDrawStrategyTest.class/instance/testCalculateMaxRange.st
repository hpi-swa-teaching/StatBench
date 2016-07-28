testing
testCalculateMaxRange
	self assert: (self strategy diagramProperties at: #maxRange) equals: 1.
	self strategy diagramProperties at: #function put: (Dictionary newFrom: {
			3 -> { 7.5 } asOrderedCollection .
	 	 	8 -> { 10 } asOrderedCollection .
	  		15.5 -> { 17 } asOrderedCollection .
	  		22.554 -> { 20.554 } asOrderedCollection .
	  		30 -> { 23 } asOrderedCollection }).
	self strategy calculateMaxRange.
	self assert: (self strategy diagramProperties at: #maxRange) equals: 30