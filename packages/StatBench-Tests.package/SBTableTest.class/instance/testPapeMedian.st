testing
testPapeMedian
	self table
		addRows: 4 withSize: 2;
		row: 1 column: 1 value: 1;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 3;
		row: 2 column: 2 value: 4;
		row: 3 column: 1 value: 5;
		row: 3 column: 2 value: 6.
	self assert: (self table papeMedianForColumn: 1) = 3.
	self assert: (self table papeMedianForColumn: 2) = 4.
	self table
		row: 4 column: 1 value: 7;
		row: 4 column: 2 value: 8.
	self assert: ((self table papeMedianForColumn: 1) = 3 or: [ (self table papeMedianForColumn: 1) = 4 ]).
	self assert: ((self table papeMedianForColumn: 2) = 4 or: [ (self table papeMedianForColumn: 2) = 6 ])