testing
testHasNumericalScaling
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: 2.2 raw: false;
		row: 2 column: 1 value: 'abc';
		row: 2 column: 2 value: 4 raw: false.
	self
		assert: (self table isColumnNumeric: 1) not;
		assert: (self table isColumnNumeric: 2).
		
	(self table rowAt: 1) add: 'asd'.
	self should: [ self table isColumnNumeric: 3 ] raise: Error