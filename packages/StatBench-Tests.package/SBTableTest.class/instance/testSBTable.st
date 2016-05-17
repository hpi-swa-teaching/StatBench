testing
testSBTable
	self assert: self table class = SBTable.
	self table
		addRows: 2 withSize: 2;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.
	self assert: (self table min = 1).
	self assert: (self table max = 4).
	self assert: (self table average = ((3 + 2 + 1 + 4) / 4.0))