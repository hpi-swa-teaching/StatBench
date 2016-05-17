testing
testStandardDeviation
	self assert: ( self table standardDeviation = 1.25 sqrt).
	self assert: ((self table varianceColumn: 1) = 1).
	self assert: ((self table varianceColumn: 2) = 1).