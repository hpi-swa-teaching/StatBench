testing
testVariance
	self table: SBTable new.
	self table
		addRows: 2 size: 2;
		row: 1 column: 1 value: (SBNumber newFromNumber: 3.2);
		row: 1 column: 2 value: (SBNumber newFromNumber: 2);
		row: 2 column: 1 value: (SBNumber newFromNumber: 1);
		row: 2 column: 2 value: (SBNumber newFromNumber: 4).
	self
		assert: (self table varianceForColumn: 1) = 1.21;
		assert: (self table varianceForColumn: 2) = 1