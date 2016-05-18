testing
testMax
	self assert: (self table maxForColumn: 1) = 3.
	self assert: (self table maxForColumn: 2) = 4