testing
testTableDimensions
	self table: SBTable new.
	self table
		addRows: 2 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	self
		assert: self table rowLength equals: 2;
		assert: self table columnLength equals: 2