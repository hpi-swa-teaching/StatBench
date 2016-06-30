testing
testColumnNameForColumn
	self table: SBTable new.
	self table
		addRows: 3 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 5);
		row: 2 column: 1 value: nil;
		row: 2 column: 2 value: (SBNumber newFromNumber: 6);
		columnName: 'first' forColumn: 1;
		columnName: 'second' forColumn: 2.
	self
		assert: self table columnNames first equals: 'first';
		assert: self table columnNames second equals: 'second'