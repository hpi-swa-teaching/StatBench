testing
testMin
	self assert: (self table minForColumn: 1) = 1.
	self assert: (self table minForColumn: 2) = 2