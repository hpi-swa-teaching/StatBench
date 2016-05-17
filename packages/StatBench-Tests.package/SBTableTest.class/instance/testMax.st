testing
testMax
	self assert: (self table max = 4).
	self assert: ((self table maxColumn: 1) = 3).
	self assert: ((self table maxColumn: 2) = 4).