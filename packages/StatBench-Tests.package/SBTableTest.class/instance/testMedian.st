testing
testMedian
	self assert: (self table median = (5/2)).
	self assert: ((self table medianColumn: 1) = 2).
	self assert: ((self table medianColumn: 2) = 3).