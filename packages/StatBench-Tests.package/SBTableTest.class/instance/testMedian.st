testing
testMedian
	self assert: (self table medianForColumn: 1) = 2.
	self assert: (self table medianForColumn: 2) = 3