testing
testSBTable
	self assert: self table class = SBTable.
	table row: 1 column: 1 value: 3. 
	table row: 1 column: 2 value: 2.
	table row: 2 column: 1 value: 1.
	table row: 2 column: 2 value: 4.
	self assert: (self table getMin = 1).
	self assert: (self table getMax = 4).