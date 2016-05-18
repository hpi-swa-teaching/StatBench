testing
testAverage
	self assert: (self table averageForColumn: 1) = 2.
	self assert: (self table averageForColumn: 2) = 3