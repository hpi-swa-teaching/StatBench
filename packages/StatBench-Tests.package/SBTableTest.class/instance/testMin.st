testing
testMin
	self assert: (self table min = 1).
	self assert: ((self table minColumn: 1) = 1).
	self assert: ((self table minColumn: 2) = 2).