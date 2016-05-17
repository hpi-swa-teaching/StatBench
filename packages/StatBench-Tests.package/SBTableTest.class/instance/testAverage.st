testing
testAverage
	self assert: (self table average = ((3 + 2 + 1 + 4) / 4.0)).
	self assert: ((self table averageColumn: 1) = 2).
	self assert: ((self table averageColumn: 2) = 3).