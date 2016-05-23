testing
testMean
	self table
		addRows: 2 withSize: 3;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (self table meanForColumn: 1) = (3 + 1 / 2).
	self assert: (self table meanForColumn: 2) = (2 + 4 / 2).
	self assert: (self table meanForColumn: 3) = nil