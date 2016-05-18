testing
testVariance
	self assert: (self table varianceForColumn: 1) = 1.
	self assert: (self table varianceForColumn: 2) = 1