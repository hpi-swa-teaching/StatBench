testing
testMax
	self table: SBTable new.
	self table
		addRows: 3 size: 3;
		row: 1 column: 1 value: 3;
		row: 1 column: 2 value: 2;
		row: 2 column: 1 value: 1;
		row: 2 column: 2 value: 4.5.
	self
		assert: (self table maxForColumn: 1) = 3;
		assert: (self table maxForColumn: 2) = 4.5;
		assert: (self table maxForColumn: 3) isNil